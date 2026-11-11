"""Build a public Obsidian vault out of the released, rights-reviewed evidence."""
from collections import defaultdict
import json
from pathlib import Path
import re
from urllib.parse import urljoin
from zipfile import ZipFile
from portable import archive,BASE,READ
from render import SITE,HERE

def load(path):
    return json.loads(path.read_text())

def note_links(text):
    def transform(match):
        url=match[1]
        if url.startswith(('http:','https:','#','media/')):
            return match[0]
        return ']('+urljoin(READ,url)+')'
    return re.sub(r'\]\(([^)\s]+)\)',transform,text)

def build():
    proof=SITE.parent/'evidence'
    maps=load(proof/'maps.json')
    archive_path=proof/'core-source.zip'
    with ZipFile(archive_path) as core:
        theorems=json.loads(core.read('evidence/theorems.json'))['records']
        axioms=json.loads(core.read('evidence/axiom-audit.json'))['theorems']
    files={'.obsidian/app.json':json.dumps({'attachmentFolderPath':'media','newLinkFormat':'shortest','useMarkdownLinks':False},indent=2)}
    def note(name,body):
        files[name+'.md']='# '+name+'\n\n'+body.strip()+'\n'
    note('Home',"""Open this folder as a vault in Obsidian. Everything in it also opens with an ordinary Markdown reader.

- [[Engine and passage]] follows the map bytes, ordinary spawn, transitions and safe first exit to a theorem.
- [[Map atlas]] covers the original episode and the constructed scenarios.
- [[Proof core]] indexes 277 fully named CombatV1 declarations and includes the complete sources.
- [[Recording and checking]] explains how the teaching and native routes can be checked.
- [[Memory]], [[Journal]] and [[Plan]] retain the experimental decisions, checks and open tasks.
- [[Reading]] lists texts, papers and reference manuals by subject.

[Dashboard]("""+BASE+""") · [Classic game]("""+BASE+"""classic/) · [Proof gallery]("""+BASE+"""evidence/) · [Offline Jupyter Book]("""+READ+"""jupyter-book.zip)""")
    chapter=(HERE/'chapter.md').read_text()
    start=chapter.index('## A reading path')
    end=chapter.index('## Questions for the next')
    files['Engine and passage.md']=re.sub(r' \{#\w+\}', '',note_links(chapter[:start]+chapter[end:]))
    files['Reading.md']=note_links(chapter[start:end].replace('## A reading path {#reading}','# Reading'))
    for img in (SITE/'media').glob('*.png'):
        files['media/'+img.name]=img.read_bytes()
    for item in ['freedoom-COPYING.txt','PassageLab.lean','Audit.lean','audit.txt','wrong-order.txt','passage-lab.ipynb','research-evidence.json','teaching-receipt.json']:
        files['Resources/'+item]=(SITE/item).read_bytes()
    files['Resources/core-source.zip']=archive_path.read_bytes()
    files['Resources/core.json']=(proof/'core.json').read_bytes()
    files['Resources/native-routes.json']=(SITE.parent/'game/native-routes.json').read_bytes()
    for name in ['combat-runs.json','AllRoutes.lean','routes.json']:
        files['Resources/'+name]=(SITE.parent/'downloads'/name).read_bytes()
    note('Memory',"""A result binds a map foundation, rules edition, initial state, input tape and observation. The frozen CombatV1 core contains the constructed fixtures. CombatV2 is the edition of the original-map passage research. The public ProofGrid courses and the notebook airlock each have their own explicit transitions. Keep these four identities in future comparisons.

Hangar has two stock-kernel zero-shot witnesses. Nuclear Plant’s 1,017-input standard-axiom proof and its 1,013-input compiler-assisted proof have different trust assumptions. Computer Station has a complete 4,161-input compiler-assisted passage alongside its stock-kernel first-movement result. This brings the full original-map count to three across the two trust models. Zero shots counts player actions. Monsters can still die. [[Map atlas]] · [[Engine and passage]]""")
    note('Journal',"""The historical CombatV1 primary and separate WMI build lineages finished on 2026-10-08 in jobs 281144 and 281142. Both recorded the same 277 declarations.

On 2026-11-11 WMI 315851 compiled the seven teaching theorems, re-imported them and rejected the reordered airlock controller. WMI 315888 executed the Jupyter notebook, including the compiler processes. The strict Jupyter Book build 315911 documented the quiet Nuclear Plant case. After the Computer Station compiler-assisted proof arrived, WMI job 315947 re-executed all notebook cells and 315950 rebuilt the Jupyter Book with strict checks.

WMI 315907 extracted the public core, checked 268 frozen input hashes and 218 upstream files, and re-imported all 277 declarations using the historical compiled dependencies. Its new axiom transcript matches both historical transcripts byte for byte. [Machine-readable core record](Resources/core.json)""")
    note('Plan',"""1. For each map with a local theorem, identify the next missing move from ordinary spawn. Include keys, timers, projectiles and spatial indexing when identifying a checkpoint. [[Map atlas]]
2. Use recorded or ML-proposed inputs to obtain new upper bounds. Prove first exit and all-prefix safety for each tape. A lower bound must quantify over every admissible tape. [[Engine and passage]]
3. Compare native-assisted and stock-kernel certificates on the same tape. Track the exact axiom report and the engine edition. [[Recording and checking]]
4. Determine encounter and transition rules needed for secret progression, the finale, and transfer of inventory between maps. A collection of pistol starts is a different initial-state convention from a continuous episode. [[Memory]]""")
    note('Recording and checking',"""A player or trained policy proposes an input tape. In the teaching courses, export the recording, pair the companion with a local Lean installation and check the safe first exit. In the native edition, provide the matching lawful IWAD to the local worker. Read the output class and axiom audit for each route. Independently inspect the airlock proofs in [PassageLab.lean](Resources/PassageLab.lean), rerun [the self-contained notebook](Resources/passage-lab.ipynb), or study the [original public input tapes](Resources/native-routes.json).

The public courses have nine original maps with three checked route styles per map. The [27 Lean proofs](Resources/AllRoutes.lean) and [route catalog](Resources/routes.json) identify them individually. The [native verification receipts](Resources/combat-runs.json) carry the distinct assumptions of the compiler-assisted jobs.

Nuclear Plant's quiet input tape first exits on tick 1,013 with 82 health, zero shots and one credited kill. The Lean declarations `Recording.passage` and `Recording.finalObservation` include their generated native-decision axioms. The armed 1,017-input route has a stock-kernel proof. [Published route receipts]("""+BASE+"""downloads/combat-runs.json) · [Companion and agent verification kit]("""+BASE+"""downloads/lean-doom-companion.zip) · [[Reading]]""")
    levels=[]
    for row in maps:
        key=row['level']+' '+row['name']
        levels.append('- [['+key+']] — '+row['status'])
        text=[row['description'],'Edition: '+row['edition']+'.','## Checked statements']
        for entry in row['proofs']:
            text.append('### '+entry['title']+'\n\n`'+entry['declaration']+'`\n\n'+entry['auditText']+'\n\nSource SHA-256 `'+entry['sourceSha256']+'`. Audit SHA-256 `'+entry['auditSha256']+'`.')
        if row['level']=='E1M7': text.append('The 4,161-input controller now has a full compiler-assisted Lean passage and checked endpoint, with 45 health, 25 armor, 35 bullets, 93 shots and 27 credited kills. Its native-decision axiom is explicit in [the receipt](Resources/combat-runs.json). A joined standard-axiom proof remains open.')
        if row['level']=='E1M2': text.append('The newer 1,013-input case has a compiler-assisted certificate. [[Recording and checking]]')
        text.append('[[Map atlas]] · [[Engine and passage]]')
        note(key,'\n\n'.join(text))
    note('Map atlas','\n'.join(levels)+'\n\n[[Memory]] · [[Proof core]]')
    groups=defaultdict(list)
    for entry in theorems:
        mod=entry['file'].split('/')[1]
        if mod.endswith('.lean'):mod=mod[:-5]
        groups[mod].append(entry)
    sections=[]
    for name,entries in sorted(groups.items()):
        key='Core - '+name
        sections.append('- [['+key+']] · '+str(len(entries))+' declarations')
        text=['Each declaration below has a recorded stock-kernel import. File and line refer to the [included public sources](Resources/core-source.zip).']
        for entry in entries:
            ax=', '.join(axioms[entry['name']]) or 'none'
            text.append('**'+entry['name']+'**\n\n`'+entry['file']+'`, line '+str(entry['line'])+'. Axioms: '+ax+'.')
        text.append('[[Proof core]]');note(key,'\n\n'.join(text))
    note('Proof core','The CombatV1 release contains 277 named declarations across 162 modules. The following notes group declarations by subject or segment family. Source-only data modules contribute to the checked closure. [Complete source archive](Resources/core-source.zip) · [Verification record](Resources/core.json)\n\n'+'\n'.join(sections)+'\n\n[[Map atlas]]')
    files['Resources/ARTWORK.txt']='The native spawn image is rendered using Freedoom Phase 1 assets. Its full redistribution notice is in freedoom-COPYING.txt in this folder. Other course and proof screenshots and the phase-rank chart are original to this public teaching project.\n'
    references=set()
    for name,data in files.items():
        if name.endswith('.md'):
            references.update(re.findall(r'\[\[([^\]|]+)',data))
    missing=[name for name in references if name+'.md' not in files]
    if missing:raise ValueError(missing)
    archive(SITE/'obsidian-vault.zip',{k:v.encode() if isinstance(v,str) else v for k,v in files.items()})
    print(f'{sum(k.endswith(".md") for k in files)} linked notes, {len(maps)} level and scenario records, {len(theorems)} core declarations')

if __name__=='__main__':build()
