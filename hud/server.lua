
missionNameT = {}

function missionNameT.debugSend(player,cmd,text)
missionNameT.setMissionName(text,player)
end

function missionNameT.setMissionName(text,player)
triggerClientEvent(player,"story.missionName.triggerRendering",resourceRoot,text)
end

--addCommandHandler("mission",debugSend)

