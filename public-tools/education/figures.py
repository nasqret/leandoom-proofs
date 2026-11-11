"""Draw phase ranks computed by the standalone four-phase teaching model."""
from pathlib import Path
import matplotlib
matplotlib.use('Agg')
from matplotlib import pyplot as plt

HERE = Path(__file__).resolve().parent
SITE = HERE.parents[1] / 'public-site' / 'learn'
if not SITE.is_dir(): SITE = HERE.parents[1] / 'learn'
transition = {(0,'collect'):1,(1,'use'):2,(2,'walk'):3}
def ranks(tape):
    result = [0]
    for action in tape:
        result.append(transition.get((result[-1],action),result[-1]))
    return result
plt.rcParams.update({'font.family':'DejaVu Sans','font.size':11,'axes.edgecolor':'#515e55','text.color':'#f3eee4','axes.labelcolor':'#ece8d9','xtick.color':'#dadacd','ytick.color':'#dadacd'})
fig, axs = plt.subplots(1,2,figsize=(10,3.8),sharey=True,facecolor='#171e1e',layout='constrained')
for ax,controls,color in zip(axs,[['collect','use','walk'],['use','collect','walk']],['#9dddac','#ffae71']):
    values=ranks(controls);ax.set_facecolor('#171e1e')
    ax.step(range(4),values,where='post',lw=2.5,color=color);ax.scatter(range(4),values,s=68,color=color,zorder=3)
    ax.set_xticks(range(4),labels=['spawn']+controls);ax.set_ylim(-.25,3.3);ax.set_xlim(-.12,3.12)
    ax.set_yticks(range(4),labels=['dock · 0','carrying · 1','opened · 2','outside · 3']);ax.tick_params(length=0,pad=8)
    ax.spines[['top','right']].set_visible(False);ax.grid(axis='y',alpha=.17);ax.set_axisbelow(True)
    ax.set_xlabel('input applied',labelpad=12)
axs[0].set_title('Winning order',loc='left',color='#9dddac',weight='bold',pad=13)
axs[1].set_title('Same inputs, different order',loc='left',color='#ffae71',weight='bold',pad=13)
fig.savefig(SITE/'media/phase-ranks.png',dpi=125,facecolor=fig.get_facecolor())
