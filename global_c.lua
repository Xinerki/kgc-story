
function findRotation( x1, y1, x2, y2 ) 
    local t = -math.deg( math.atan2( x2 - x1, y2 - y1 ) )
    return t < 0 and t + 360 or t
end

function onRender()
missionNameT.renderMissionName()
pedTasksT.update()
aiT.update()
subtitlesT.render()
missions.renderMissionMarkers()
end

addEventHandler("onClientRender",root,onRender)

function playSound_s(path, loop, throttled)
playSound(path,loop,throttled)
end

addEvent("story.global.triggerPlaySound",true)
addEventHandler("story.global.triggerPlaySound",root,playSound_s)