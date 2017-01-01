
mission2 = {}
mission2players = {}

function mission2.waitForPlayer2(player1)
missionNameT.setMissionName("Waiting for a 2nd player...", player1)
toggleAllControls(player1,false, true, false)
fadeCamera(player1,false)
mission2.dimension=math.random(50,110)
outputChatBox( "You could type /leave if nobody joins, but the cmd is not added yet.", player1 )
setElementDimension(player1,mission2.dimension)
mission2.player1=player1
end

function mission2.startMission(player2)
mission2.player2=player2
mission2players.player1 = mission2.player1
mission2players.player2 = mission2.player2
setElementDimension(player2,mission2.dimension)
toggleAllControls(player2,false, true, false)
fadeCamera(player2,false)
outputChatBox(getPlayerName(player2).." joined.", mission2.player1)

missionNameT.setMissionName("Educational Theft", mission2players)

setTimer(mission2.cutscene1_0, 1500, 1)

end

function mission2.cutscene1_0()
mission2.kyle = createPed( 292, -1947, 261, 41, 24, false )
setElementDimension(mission2.kyle, mission2.dimension)

setElementPosition(mission2.player1,-1948, 266, 41)
setElementRotation( mission2.player1, 0, 0, 201 ,"default", true )

setElementPosition(mission2.player2,-1951, 265, 41)
setElementRotation( mission2.player2, 0, 0, 227 ,"default", true )

setCameraMatrix(mission2.player1, -1951, 268, 42, -1947, 261, 41, 0, 75)
setCameraMatrix(mission2.player2, -1951, 268, 42, -1947, 261, 41, 0, 75)

--setCameraMatrix( player thePlayer, float positionX, float positionY, float positionZ [, float lookAtX, float lookAtY, float lookAtZ, float roll = 0, float fov = 70 ] )

fadeCamera(mission2.player1, true)
fadeCamera(mission2.player2, true)
setTimer(mission2.cutscene1_1,1250,1)
end

function mission2.cutscene1_1()
subtitlesT.setSubtitle(mission2players, "Kyle: My name is Kyle. Doesn't matter what your name is.", 3000)
setTimer(mission2.cutscene1_2, 3100, 1)
end

function mission2.cutscene1_2()
subtitlesT.setSubtitle(mission2players, "Kyle: Mullan.. One of my business associates needs a special vehicle..", 4000)
setTimer(mission2.cutscene1_3, 4100, 1)
end

function mission2.cutscene1_3()
subtitlesT.setSubtitle(mission2players, "Kyle: Only one in the state.", 2000)
setTimer(mission2.cutscene1_4, 2100, 1)
end

function mission2.cutscene1_4()
subtitlesT.setSubtitle(mission2players, "Kyle: They use it in the driving school, and we feel it's being used improperly.", 4500)
setTimer(mission2.cutscene1_5, 4600, 1)
end

function mission2.cutscene1_5()
subtitlesT.setSubtitle(mission2players, "Kyle: That means we need it.", 2000)
setTimer(mission2.cutscene1_6, 2100, 1)
end

function mission2.cutscene1_6()
subtitlesT.setSubtitle(mission2players, "Kyle: It's a sports car, luxury stuff.", 3000)
setTimer(mission2.cutscene1_7, 3100, 1)
end

function mission2.cutscene1_7()
pedTasksT.makePedWalkTo(mission2.kyle,-1947.95,265.25,41,0)
subtitlesT.setSubtitle(mission2players, "Kyle: YOU will need to get a car from Michelle's garage.", 3500)
setTimer(mission2.cutscene1_8, 3600, 1)
end

function mission2.cutscene1_8()
pedTasksT.makePedWalkTo(mission2.kyle,-1950.375,264.38,41,0)
subtitlesT.setSubtitle(mission2players, "Kyle: And YOU need a Packer truck from the docks.", 3500)
setTimer(mission2.cutscene1_9, 3600, 1)
end

function mission2.cutscene1_9()
pedTasksT.makePedWalkTo(mission2.kyle,-1947, 261, 41,0)
subtitlesT.setSubtitle(mission2players, "Kyle: Once you got both of the vehicles, the packer needs \nto park at the locked gates and the vehicle needs to jump the packer.", 5000)
setTimer(mission2.cutscene1_10, 5100, 1)
end

function mission2.cutscene1_10()
subtitlesT.setSubtitle(mission2players, "Kyle: Then get the vehicle and come back here.", 2000)
setTimer(mission2.cutscene1_11, 2100, 1)
end

function mission2.cutscene1_11()
subtitlesT.setSubtitle(mission2players, "Kyle: Payout's gonna be based on vehicle damage, so don't screw this up!", 3200)
setTimer(mission2.gameplay_0, 3300, 1)
end

function mission2.gameplay_0()
fadeCamera(mission2.player1, false)
fadeCamera(mission2.player2, false)
setTimer(mission2.gameplay_1,1100,1)
end

function mission2.gameplay_1()

destroyElement(mission2.kyle)

mission2.ramp=createObject(1245, -2024, -135, 35, 0, 0, -90)
setElementDimension(mission2.ramp, mission2.dimension)

mission2.coquette=createVehicle(getVehicleModelFromName("Banshee"),-2064+math.random(-10,10),-140+math.random(-10,10),35,0,0,math.random(0,360))
setElementDimension(mission2.coquette, mission2.dimension)
setVehicleDamageProof( mission2.coquette,true )
setElementFrozen(mission2.coquette, true)
--createVehicle( int model, float x, float y, float z [, float rx, float ry, float rz, string numberplate, bool bDirection, int variant1, int variant2 ] )

mission2.player1car=createVehicle(getVehicleModelFromName("Majestic"),-1971,274,35,0,0,90)
setElementDimension(mission2.player1car, mission2.dimension)
setElementPosition(mission2.player1,-1971, 271, 35)
setElementRotation(mission2.player1, 0, 0, 64, "default", true)

mission2.player2car=createVehicle(getVehicleModelFromName("Stallion"),-1972,259,35,0,0,64)
setElementDimension(mission2.player2car, mission2.dimension)
setElementPosition(mission2.player2,-1975, 253, 35)
setElementRotation(mission2.player2, 0, 0, 64, "default", true)

setTimer(mission2.gameplay_2,100,1)
end

function mission2.gameplay_2()
fadeCamera(mission2.player1, true)
fadeCamera(mission2.player2, true)

toggleAllControls(mission2.player1,true, true, false)
toggleAllControls(mission2.player2,true, true, false)
setCameraTarget(mission2.player1)
setCameraTarget(mission2.player2)

setTimer(mission2.gameplay_3,1000,1)
end

function mission2.gameplay_3()
subtitlesT.setSubtitle(mission2.player1, "Go to Michelle's garage and get the vehicle.", 10000)

mission2.beamer=createVehicle(getVehicleModelFromName("Tahoma"), -1787, 1214, 25, 0, 0, 180)
mission2.beamerblip=createBlipAttachedTo(mission2.beamer, 0, 2, 50,50,255, 255, 0, 99999, mission2.player1)
mission2.beamermarker=createMarker(0,0,0,"arrow",1.5,50,50,255,100,mission2.player1)
attachElements( mission2.beamermarker, mission2.beamer, 0, 0, 3 )

setElementDimension(mission2.beamer, mission2.dimension)
setElementDimension(mission2.beamerblip, mission2.dimension)
setElementDimension(mission2.beamermarker, mission2.dimension)

addEventHandler("onVehicleEnter", mission2.beamer, mission2.gameplay1_1)

subtitlesT.setSubtitle(mission2.player2, "Go to Easter Basin docks and get a Packer.", 10000)

mission2.randomx=math.random(-3,3)
mission2.randomy=math.random(-3,3)
mission2.randomrot=math.random(0,360)

mission2.packer=createVehicle(getVehicleModelFromName("Packer"), -1596+mission2.randomx, 90+mission2.randomy, 4, 0, 0, mission2.randomrot)
mission2.packerblip=createBlipAttachedTo(mission2.packer, 0, 2, 50,50,255, 255, 0, 99999, mission2.player2)
mission2.packermarker=createMarker(0,0,0,"arrow", 1.5, 50,50,255,100,mission2.player2)
attachElements(mission2.packermarker,mission2.packer,0,0,3)

setElementDimension(mission2.packer, mission2.dimension)
setElementDimension(mission2.packerblip, mission2.dimension)
setElementDimension(mission2.packermarker, mission2.dimension)

addEventHandler("onVehicleEnter", mission2.packer, mission2.gameplay2_1)

addEventHandler("onVehicleExplode",mission2.beamer,mission2.failmission_BLOWUPVEHICLE)
addEventHandler("onVehicleExplode",mission2.packer,mission2.failmission_BLOWUPPACKER)
addEventHandler("onVehicleExplode",mission2.coquette,mission2.failmission_BLOWUPCOQUETTE)
addEventHandler("onPlayerQuit",mission2.player1,mission2.failmission_PLAYER1LEFT)
addEventHandler("onPlayerQuit",mission2.player2,mission2.failmission_PLAYER2LEFT)

end

--From this point separate the gameplay functions to gameplay1_* for player1 and gameplay2_* for player2

function mission2.gameplay1_1(player)
if player == mission2.player1 then
destroyElement(mission2.beamerblip)
destroyElement(mission2.beamermarker)
outputChatBox("* "..getPlayerName(mission2.player1).." got the vehicle..", mission2.player1, 50,255,50)
outputChatBox("* "..getPlayerName(mission2.player1).." got the vehicle..", mission2.player2, 50,255,50)
subtitlesT.setSubtitle(mission2.player1, "Wait for "..getPlayerName(mission2.player2).." to park the Packer.", 10000)
removeEventHandler("onVehicleEnter", mission2.beamer, mission2.gameplay1_1)
end
end

function mission2.gameplay2_1(player)
if player == mission2.player2 then
destroyElement(mission2.packerblip)
destroyElement(mission2.packermarker)
outputChatBox("* "..getPlayerName(mission2.player2).." got the Packer..", mission2.player1, 50,255,50)
outputChatBox("* "..getPlayerName(mission2.player2).." got the Packer..", mission2.player2, 50,255,50)
subtitlesT.setSubtitle(mission2.player2, "Park the Packer in front of the Driving School gates.", 10000)
mission2.parkmarker=createMarker(-2045, -97, 34.5, "cylinder", 4, 15, 190, 60, 100, mission2.player2)
mission2.parkblip=createBlipAttachedTo(mission2.parkmarker, 0, 2, 15, 190, 60, 255, 0, 99999, mission2.player2)
setElementDimension(mission2.parkmarker, mission2.dimension)
setElementDimension(mission2.parkblip, mission2.dimension)
addEventHandler("onMarkerHit", mission2.parkmarker, mission2.gameplay2_2)
--createMarker( float x, float y, float z [, string theType = "checkpoint", float size = 4.0, int r = 0, int g = 0, int b = 255, int a = 255, visibleTo = getRootElement( ) ] )
removeEventHandler("onVehicleEnter", mission2.packer, mission2.gameplay2_1)
end
end

function mission2.gameplay2_2(hitElement)
if hitElement==mission2.packer then
destroyElement(mission2.parkmarker)
destroyElement(mission2.parkblip)
subtitlesT.setSubtitle(mission2.player2,"Allow "..getPlayerName(mission2.player1).." to jump the gate using the Packer.",10000)
subtitlesT.setSubtitle(mission2.player1,"Jump over the gate using the Packer.",10000)
mission2.jumpmarker=createMarker(-2045,-102.4,38,"cylinder",3,15,190,60,100,mission2.player1)
setElementDimension(mission2.jumpmarker,mission2.dimension)
addEventHandler("onMarkerHit",mission2.jumpmarker,mission2.gameplay1_2)
end
end

function mission2.gameplay1_2(hitElement)
if hitElement==mission2.beamer then
destroyElement(mission2.jumpmarker)
mission2.coquettemarker=createMarker(0,0,0,"arrow",1.5,50,50,255,100,mission2.player1)
setElementDimension(mission2.coquettemarker,mission2.dimension)
attachElements(mission2.coquettemarker,mission2.coquette,0,0,3)
subtitlesT.setSubtitle(mission2.player1,"Get in the vehicle.",10000)
addEventHandler("onVehicleEnter",mission2.coquette,mission2.gameplay1_3)
end
end

function mission2.gameplay1_3(player)
if player==mission2.player1 then
destroyElement(mission2.coquettemarker)
setElementFrozen(mission2.coquette, false)
setVehicleDamageProof(mission2.coquette, false)
subtitlesT.setSubtitle(mission2.player2,"Follow "..getPlayerName(mission2.player1).." back to the car dealership..",10000)
subtitlesT.setSubtitle(mission2.player1,"Use the ramp to jump out of the driving school grounds.",10000)
mission2.getoutmarker=createMarker(-2024,-104,37.5,"cylinder",3,15,190,60,100,mission2.player1)
setElementDimension(mission2.getoutmarker,mission2.dimension)
addEventHandler("onMarkerHit",mission2.getoutmarker,mission2.gameplay1_4)
removeEventHandler("onVehicleEnter", mission2.coquette, mission2.gameplay1_3)
end
end

function mission2.gameplay1_4(hitElement)
if hitElement==mission2.coquette then
destroyElement(mission2.getoutmarker)
subtitlesT.setSubtitle(mission2.player1,"Go back to the car dealership.\nMake sure you don't damage the car too much!",10000)
mission2.finaldestination=createMarker(-1917,302,40,"cylinder",3,15,190,60,100,mission2.player1)
mission2.finaldestinationblip=createBlipAttachedTo(mission2.finaldestination, 0, 2, 15, 190, 60, 255, 0, 99999, mission2.player1)
setElementDimension(mission2.finaldestination,mission2.dimension)
setElementDimension(mission2.finaldestinationblip,mission2.dimension)
addEventHandler("onMarkerHit",mission2.finaldestination,mission2.gameplay1_5)
end
end

function mission2.gameplay1_5(hitElement)
if hitElement==mission2.coquette then
local damage=math.ceil(getElementHealth(mission2.coquette))
destroyElement(mission2.coquette)
destroyElement(mission2.player1car)
destroyElement(mission2.player2car)
destroyElement(mission2.packer)
destroyElement(mission2.finaldestination)
destroyElement(mission2.finaldestinationblip)
setElementDimension(mission2.player1, 0)
setElementDimension(mission2.player2, 0)
setElementData(Mission2Marker,"story.isPlayer1inMission",false)
setElementData(Mission2Marker,"story.isPlayer2inMission",false)
setElementData(Mission2Marker,"story.player1",false)
setElementData(Mission2Marker,"story.player2",false)
playSound(mission2.player1,"files/job/big.wav",false,true)
playSound(mission2.player2,"files/job/big.wav",false,true)
subtitlesT.setSubtitle(mission2players,"MISSION PASSED\n$"..tostring(damage),5000)
givePlayerMoney(mission2.player1,damage)
givePlayerMoney(mission2.player2,damage)
removeEventHandler("onVehicleExplode",mission2.coquette,mission2.failmission_BLOWUPCOQUETTE)
removeEventHandler("onVehicleExplode",mission2.beamer,mission2.failmission_BLOWUPVEHICLE)
removeEventHandler("onVehicleExplode",mission2.packer,mission2.failmission_BLOWUPPACKER)
removeEventHandler("onPlayerQuit",mission2.player1,mission2.failmission_PLAYER1LEFT)
removeEventHandler("onPlayerQuit",mission2.player2,mission2.failmission_PLAYER2LEFT)
end
end

function mission2.failmission_BLOWUPCOQUETTE()
subtitlesT.setSubtitle(mission2players,"MISSION FAILED\nThe target vehicle was destroyed.",5000,255,50,50,255)
destroyElement(mission2.coquette)
destroyElement(mission2.player1car)
destroyElement(mission2.player2car)
destroyElement(mission2.packer)
destroyElement(mission2.finaldestination) -- yes, it's inefficient (generates errors) but it does work, so!
destroyElement(mission2.finaldestinationblip)
destroyElement(mission2.getoutmarker)
destroyElement(mission2.coquettemarker)
destroyElement(mission2.jumpmarker)
destroyElement(mission2.parkmarker)
destroyElement(mission2.parkblip)
destroyElement(mission2.packerblip)
destroyElement(mission2.packermarker)
destroyElement(mission2.beamerblip)
destroyElement(mission2.beamermarker)
setElementDimension(mission2.player1, 0)
setElementDimension(mission2.player2, 0)
setElementData(Mission2Marker,"story.isPlayer1inMission",false)
setElementData(Mission2Marker,"story.isPlayer2inMission",false)
setElementData(Mission2Marker,"story.player1",false)
setElementData(Mission2Marker,"story.player2",false)
removeEventHandler("onVehicleExplode",mission2.coquette,mission2.failmission_BLOWUPCOQUETTE)
removeEventHandler("onVehicleExplode",mission2.beamer,mission2.failmission_BLOWUPVEHICLE)
removeEventHandler("onVehicleExplode",mission2.packer,mission2.failmission_BLOWUPPACKER)
removeEventHandler("onPlayerQuit",mission2.player1,mission2.failmission_PLAYER1LEFT)
removeEventHandler("onPlayerQuit",mission2.player2,mission2.failmission_PLAYER2LEFT)
end

function mission2.failmission_BLOWUPVEHICLE()
subtitlesT.setSubtitle(mission2players,"MISSION FAILED\nThe vehicle was destroyed.",5000,255,50,50,255)
destroyElement(mission2.coquette)
destroyElement(mission2.player1car)
destroyElement(mission2.player2car)
destroyElement(mission2.packer)
destroyElement(mission2.finaldestination) -- yes, it's inefficient (generates errors) but it does work, so!
destroyElement(mission2.finaldestinationblip)
destroyElement(mission2.getoutmarker)
destroyElement(mission2.coquettemarker)
destroyElement(mission2.jumpmarker)
destroyElement(mission2.parkmarker)
destroyElement(mission2.parkblip)
destroyElement(mission2.packerblip)
destroyElement(mission2.packermarker)
destroyElement(mission2.beamerblip)
destroyElement(mission2.beamermarker)
setElementDimension(mission2.player1, 0)
setElementDimension(mission2.player2, 0)
setElementData(Mission2Marker,"story.isPlayer1inMission",false)
setElementData(Mission2Marker,"story.isPlayer2inMission",false)
setElementData(Mission2Marker,"story.player1",false)
setElementData(Mission2Marker,"story.player2",false)
removeEventHandler("onVehicleExplode",mission2.coquette,mission2.failmission_BLOWUPCOQUETTE)
removeEventHandler("onVehicleExplode",mission2.beamer,mission2.failmission_BLOWUPVEHICLE)
removeEventHandler("onVehicleExplode",mission2.packer,mission2.failmission_BLOWUPPACKER)
removeEventHandler("onPlayerQuit",mission2.player1,mission2.failmission_PLAYER1LEFT)
removeEventHandler("onPlayerQuit",mission2.player2,mission2.failmission_PLAYER2LEFT)
end

function mission2.failmission_BLOWUPPACKER()
subtitlesT.setSubtitle(mission2players,"MISSION FAILED\nThe packer was destroyed.",5000,255,50,50,255)
destroyElement(mission2.coquette)
destroyElement(mission2.player1car)
destroyElement(mission2.player2car)
destroyElement(mission2.packer)
destroyElement(mission2.finaldestination) -- yes, it's inefficient (generates errors) but it does work, so!
destroyElement(mission2.finaldestinationblip)
destroyElement(mission2.getoutmarker)
destroyElement(mission2.coquettemarker)
destroyElement(mission2.jumpmarker)
destroyElement(mission2.parkmarker)
destroyElement(mission2.parkblip)
destroyElement(mission2.packerblip)
destroyElement(mission2.packermarker)
destroyElement(mission2.beamerblip)
destroyElement(mission2.beamermarker)
setElementDimension(mission2.player1, 0)
setElementDimension(mission2.player2, 0)
setElementData(Mission2Marker,"story.isPlayer1inMission",false)
setElementData(Mission2Marker,"story.isPlayer2inMission",false)
setElementData(Mission2Marker,"story.player1",false)
removeEventHandler("onVehicleExplode",mission2.coquette,mission2.failmission_BLOWUPCOQUETTE)
removeEventHandler("onVehicleExplode",mission2.beamer,mission2.failmission_BLOWUPVEHICLE)
removeEventHandler("onVehicleExplode",mission2.packer,mission2.failmission_BLOWUPPACKER)
removeEventHandler("onPlayerQuit",mission2.player1,mission2.failmission_PLAYER1LEFT)
removeEventHandler("onPlayerQuit",mission2.player2,mission2.failmission_PLAYER2LEFT)
end

function mission2.failmission_PLAYER1LEFT()
subtitlesT.setSubtitle(mission2.player2,"MISSION FAILED\n"..getPlayerName(mission2.player1).." left the server.",5000,255,50,50,255)
destroyElement(mission2.coquette)
destroyElement(mission2.player1car)
destroyElement(mission2.player2car)
destroyElement(mission2.packer)
destroyElement(mission2.finaldestination) -- yes, it's inefficient (generates errors) but it does work, so!
destroyElement(mission2.finaldestinationblip)
destroyElement(mission2.getoutmarker)
destroyElement(mission2.coquettemarker)
destroyElement(mission2.jumpmarker)
destroyElement(mission2.parkmarker)
destroyElement(mission2.parkblip)
destroyElement(mission2.packerblip)
destroyElement(mission2.packermarker)
destroyElement(mission2.beamerblip)
destroyElement(mission2.beamermarker)
setElementDimension(mission2.player2, 0)
setElementData(Mission2Marker,"story.isPlayer1inMission",false)
setElementData(Mission2Marker,"story.isPlayer2inMission",false)
setElementData(Mission2Marker,"story.player1",false)
setElementData(Mission2Marker,"story.player2",false)
removeEventHandler("onVehicleExplode",mission2.coquette,mission2.failmission_BLOWUPCOQUETTE)
removeEventHandler("onVehicleExplode",mission2.beamer,mission2.failmission_BLOWUPVEHICLE)
removeEventHandler("onVehicleExplode",mission2.packer,mission2.failmission_BLOWUPPACKER)
removeEventHandler("onPlayerQuit",mission2.player1,mission2.failmission_PLAYER1LEFT)
removeEventHandler("onPlayerQuit",mission2.player2,mission2.failmission_PLAYER2LEFT)
end

function mission2.failmission_PLAYER2LEFT()
subtitlesT.setSubtitle(mission2.player1,"MISSION FAILED\n"..getPlayerName(mission2.player2).." left the server.",5000,255,50,50,255)
destroyElement(mission2.coquette)
destroyElement(mission2.player1car)
destroyElement(mission2.player2car)
destroyElement(mission2.packer)
destroyElement(mission2.finaldestination) -- yes, it's inefficient (generates errors) but it does work, so!
destroyElement(mission2.finaldestinationblip)
destroyElement(mission2.getoutmarker)
destroyElement(mission2.coquettemarker)
destroyElement(mission2.jumpmarker)
destroyElement(mission2.parkmarker)
destroyElement(mission2.parkblip)
destroyElement(mission2.packerblip)
destroyElement(mission2.packermarker)
destroyElement(mission2.beamerblip)
destroyElement(mission2.beamermarker)
setElementDimension(mission2.player1, 0)
setElementData(Mission2Marker,"story.isPlayer1inMission",false)
setElementData(Mission2Marker,"story.isPlayer2inMission",false)
setElementData(Mission2Marker,"story.player1",false)
setElementData(Mission2Marker,"story.player2",false)
removeEventHandler("onVehicleExplode",mission2.coquette,mission2.failmission_BLOWUPCOQUETTE)
removeEventHandler("onVehicleExplode",mission2.beamer,mission2.failmission_BLOWUPVEHICLE)
removeEventHandler("onVehicleExplode",mission2.packer,mission2.failmission_BLOWUPPACKER)
removeEventHandler("onPlayerQuit",mission2.player1,mission2.failmission_PLAYER1LEFT)
removeEventHandler("onPlayerQuit",mission2.player2,mission2.failmission_PLAYER2LEFT)
end