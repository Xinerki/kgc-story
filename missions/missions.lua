
Mission1Marker=createMarker( 1349, -1670, 12.5, "cylinder", 1.5, 170,82,255,255/2 )
Mission1Blip=createBlipAttachedTo( Mission1Marker, 37 )

function onHitMission1Marker(hitElement, hitDimension)
if getElementType( hitElement ) == 'player' and hitDimension == true then
mission1.startMission1(hitElement)
end
end

addEventHandler("onMarkerHit",Mission1Marker,onHitMission1Marker)