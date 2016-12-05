
aiT = {}

function aiT.setPedAsEnemyTo(enemyPed,target,weapon)
setElementSyncer( enemyPed, target )
setElementData(enemyPed,"story.ai.enemyPed",true)
setElementData(enemyPed,"story.ai.enemyPed.target",target)
setElementData(enemyPed,"story.ai.enemyPed.weapon",weapon)
end