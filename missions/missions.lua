
Mission1Marker=createMarker( 1349, -1670, 12.5, "cylinder", 1.5, 255,50,50,255/2 )
Mission1Blip=createBlipAttachedTo( Mission1Marker, 37 )
setElementData(Mission1Marker,"story.isMissionMarker",true)
setElementData(Mission1Marker,"story.missionMarkerName","A New Life")
setElementData(Mission1Marker,"story.isMissionMarkerUsed",false)
setElementData(Mission1Marker,"story.isMissionMarker1P",true)
setElementData(Mission1Marker,"story.isMissionMarker2P",false)

function onHitMission1Marker(hitElement, hitDimension)
if getElementType( hitElement ) == 'player' and hitDimension == true and not getElementData(Mission1Marker,"story.isMissionMarkerUsed") then
mission1.startMission1(hitElement)
setElementData(Mission1Marker,"story.isMissionMarkerUsed",true)
setElementData(Mission1Marker,"story.missionMarkerUsedBy",hitElement)
end
end

addEventHandler("onMarkerHit",Mission1Marker,onHitMission1Marker)

Mission2Marker=createMarker(-1936, 274, 40, "cylinder", 1.5, 0,100,255,255/2)
Mission2Blip=createBlipAttachedTo(Mission2Marker, 55)
setElementData(Mission2Marker,"story.isMissionMarker",true)
setElementData(Mission2Marker,"story.missionMarkerName","Educational Theft")
setElementData(Mission2Marker,"story.isMissionMarkerUsed",false)
setElementData(Mission2Marker,"story.isMissionMarker1P",false)
setElementData(Mission2Marker,"story.isMissionMarker2P",true)
setElementData(Mission2Marker,"story.isPlayer1inMission",false)
setElementData(Mission2Marker,"story.isPlayer2inMission",false)
setElementData(Mission2Marker,"story.player1",false)
setElementData(Mission2Marker,"story.player2",false)

function onHitMission2Marker(hitElement, hitDimension)
if getElementType( hitElement ) == 'player' 
and hitDimension == true 
and getElementData(Mission2Marker,"story.isPlayer1inMission") == false 
then

mission2.waitForPlayer2(hitElement)
setElementData(Mission2Marker,"story.isPlayer1inMission",true)
setElementData(Mission2Marker,"story.player1",hitElement)

elseif getElementType( hitElement ) == 'player' and hitDimension == true 
and getElementData(Mission2Marker,"story.isPlayer1inMission") == true 
and getElementData(Mission2Marker,"story.isPlayer2inMission") == false 
and hitElement ~= getElementData(Mission2Marker,"story.player1")
then

mission2.startMission(hitElement)
setElementData(Mission2Marker,"story.isPlayer2inMission",true)
setElementData(Mission2Marker,"story.player2",hitElement)

end
end

addEventHandler("onMarkerHit",Mission2Marker,onHitMission2Marker)

function gangWave(player)
x,y,z=getElementPosition(player)
for i=1,5 do
    ped=createPed(math.random(0,300),x+(math.random(-10,10)),y+(math.random(-10,10)),z)
    aiT.setPedAsEnemyTo(ped,getElementsByType("player"),math.random(22,32))
    --createPed( int modelid, float x, float y, float z [, float rot = 0.0, bool synced = true ] )
end
end

addCommandHandler("survival",gangWave)