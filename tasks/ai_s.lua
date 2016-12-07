
aiT = {}

function aiT.setPedAsEnemyTo(enemyPed,target,weapon)
if type(target)=="table" then 
setElementSyncer( enemyPed, target[math.random(#target)] )
else
setElementSyncer( enemyPed, target )
end
setElementData(enemyPed,"story.ai.enemyPed",true)
setElementData(enemyPed,"story.ai.enemyPed.target",target)
setElementData(enemyPed,"story.ai.enemyPed.weapon",weapon)
end