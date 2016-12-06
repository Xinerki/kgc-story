
Mission1Marker=createMarker( 1349, -1670, 12.5, "cylinder", 1.5, 170,82,255,255/2 )
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

function gangWave(player)
x,y,z=getElementPosition(player)
for i=1,5 do
    ped=createPed(0,x+(math.random(-10,10)),y+(math.random(-10,10)),z)
    aiT.setPedAsEnemyTo(ped,player,29)
    --createPed( int modelid, float x, float y, float z [, float rot = 0.0, bool synced = true ] )
end
end

--addCommandHandler("survival",gangWave)