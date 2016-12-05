


pedTasksT = {}

function pedTasksT.update()
for i,v in ipairs(getElementsByType('ped')) do

if getElementData(v,"story.pedTasks.walkingTo") == true then
pedTasksT.walkX=getElementData(v,"story.pedTasks.walkingTo.x")
pedTasksT.walkY=getElementData(v,"story.pedTasks.walkingTo.y")
pedTasksT.walkZ=getElementData(v,"story.pedTasks.walkingTo.z")
pedTasksT.walkSpeed=getElementData(v,"story.pedTasks.walkingTo.speed")

pedTasksT.pedX,pedTasksT.pedY,pedTasksT.pedZ=getElementPosition(v)

--setPedAimTarget(v,pedTasksT.walkX,pedTasksT.walkY,pedTasksT.walkZ)
pedTasksT.rot=findRotation(pedTasksT.pedX, pedTasksT.pedY, pedTasksT.walkX, pedTasksT.walkY)
setPedCameraRotation( v, -pedTasksT.rot )
setPedControlState( v, "forwards", true )

if pedTasksT.walkSpeed == 0 then setPedControlState( v, "walk", true ) end
if pedTasksT.walkSpeed == 2 then setPedControlState( v, "sprint", true ) end
pedTasksT.dist=getDistanceBetweenPoints2D( pedTasksT.pedX, pedTasksT.pedY, pedTasksT.walkX, pedTasksT.walkY )

if pedTasksT.dist <= 1 then
setPedControlState(v, "forwards", false)
setPedControlState(v, "walk", false)
setPedControlState(v, "sprint", false)
triggerServerEvent( "story.pedTasks.clearPedWalkTo", v, v )
end

end -- story.pedTasks.walkingTo

end -- for
end -- function