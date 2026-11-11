// A browser and local Lean exchange files only in the user's chosen directory.
export function choosePairFolder() {
  if (typeof window.showDirectoryPicker !== "function") {
    throw new Error("Save the recording in the directory your local verifier watches. This browser does not offer directory pairing.");
  }
  return window.showDirectoryPicker({mode: "readwrite", id: "lean-doom-runs"});
}

const delay = ms => new Promise(resolve => setTimeout(resolve, ms));

export async function sendPairedRun(folder, recording, onStatus = () => {}, {signal} = {}) {
  const data = new TextEncoder().encode(JSON.stringify(recording) + "\n");
  const bytes = new Uint8Array(await crypto.subtle.digest("SHA-256", data));
  const key = Array.from(bytes, byte => byte.toString(16).padStart(2, "0")).join("");
  const file = await folder.getFileHandle("prooflab-" + key + ".json", {create: true});
  const writable = await file.createWritable();
  await writable.write(data);
  await writable.close();
  onStatus("Recording saved. Waiting for the local Lean verifier…");
  while (!signal?.aborted) {
    try {
      const root = await folder.getDirectoryHandle(".proofs");
      const result = await root.getDirectoryHandle(key);
      const handle = await result.getFileHandle("receipt.json");
      const receipt = JSON.parse(await (await handle.getFile()).text());
      if (receipt.schema !== "proof-lab-receipt-v1" || receipt.recordingSha256 !== key ||
          receipt.level !== recording.level || receipt.engine !== recording.engine) {
        throw new Error("The local receipt does not match this recording.");
      }
      onStatus(receipt.message);
      return receipt;
    } catch (error) {
      if (error.name !== "NotFoundError") throw error;
    }
    await delay(800);
  }
  throw new DOMException("Stopped waiting for the local verifier.", "AbortError");
}
