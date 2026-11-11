'use strict';
const agentChoice=document.getElementById('agent-select');
const taskChoice=document.getElementById('task-select');
const textBox=document.getElementById('prompt');
const copyStatus=document.getElementById('copy-status');
const prompts={
  example:'Check examples/prooflab-first-room.json using the pinned Lean toolchain. Report the first safe exit, final observation, names and statements of both declarations, fresh axiom lists, and paths to the receipt and generated sources.',
  watch:'Start the local watcher on /path/to/paired-runs. I will pair that folder in the game or save my input tape into it. Keep the watcher running while I play. When a matching receipt arrives, report the recording hash, proof status, fresh axiom lists, and location of the generated Certificate.lean.',
  native:'Check my CombatV2 recording at /path/to/prooflab-run.json with the matching IWAD at /path/to/your.wad. Use the pinned toolchain and the compiler-assisted mode first. Report the exact passage or prefix, final observation, recording and IWAD hashes, and fresh axiom lists. Give the command for a stock-kernel check of those same inputs.'
};
function selectPrompt(){
  const skill=agentChoice.value==='claude'?'Use the project skill /verify-doom-run in this extracted companion.':'Use the $verify-doom-run project skill in this extracted companion.';
  textBox.value=skill+' '+prompts[taskChoice.value];
  copyStatus.textContent='';
}
agentChoice.addEventListener('change',selectPrompt);
taskChoice.addEventListener('change',selectPrompt);
selectPrompt();
document.getElementById('copy-prompt').addEventListener('click',async()=>{
  try{
    if(!navigator.clipboard?.writeText)throw Error('Clipboard unavailable');
    await navigator.clipboard.writeText(textBox.value);
    copyStatus.textContent='Prompt copied.';
  }catch{
    textBox.focus();textBox.select();
    copyStatus.textContent='Prompt selected. Use your browser’s Copy command.';
  }
});
