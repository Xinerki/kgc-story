
aiT = {}

function aiT.update()
for i,v in ipairs(getElementsByType('ped')) do
if getElementData(v,"story.ai.enemyPed") == true then

aiT.enemy=getElementData(v,"story.ai.enemyPed.target")
--if type(enemy) == "table" then enemy=enemy[math.random(0,#enemy)] end

aiT.weapon=getElementData(v,"story.ai.enemyPed.weapon")
--math.randomseed(0)

givePedWeapon(v,aiT.weapon,1,true)

aiT.pedX,aiT.pedY,aiT.pedZ=getElementPosition(v)

--aiT.aimX, aiT.aimY, aiT.aimZ = getPedBonePosition(aiT.enemy,3)
aiT.aimX, aiT.aimY, aiT.aimZ = getElementPosition(aiT.enemy)

if getDistanceBetweenPoints2D( aiT.pedX,aiT.pedY, aiT.aimX, aiT.aimY ) < 25 then

setPedControlState(v,"aim_weapon",true)

--if getPedControlState( v, "aim_weapon" ) then setPedAimTarget(v,aiT.aimX, aiT.aimY, aiT.aimZ) end
setPedAimTarget(v,aiT.aimX, aiT.aimY, aiT.aimZ)

if math.random(0,2) == 1 then
setPedControlState(v,"fire",true)
--setPedControlState(v,"aim_weapon",true)
else
setPedControlState(v,"fire",false)
--setPedControlState(v,"aim_weapon",false)
end


if math.random(0,2) == 1 then
aiT.goLeft(v)
end


if math.random(0,2) == 1 then
aiT.goRight(v)
end


else
setPedControlState(v,"fire",false)
setPedControlState(v,"aim_weapon",false)
end -- if disntace
end -- story.ai.enemyPed
end -- for
end -- function

function aiT.goLeft(ped)
setPedControlState(ped,"left",true)
setTimer(setPedControlState,3000,1,ped,"left",false)
end

function aiT.goRight(ped)
setPedControlState(ped,"right",true)
setTimer(setPedControlState,3000,1,ped,"right",false)
end