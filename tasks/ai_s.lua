
aiT = {}

function aiT.setPedAsEnemyTo(enemyPed,target,seed)
setElementSyncer( enemyPed, target )
setElementData(enemyPed,"story.ai.enemyPed",true)
setElementData(enemyPed,"story.ai.enemyPed.target",target)
setElementData(enemyPed,"story.ai.enemyPed.seed",seed)
end