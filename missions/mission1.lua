
mission1 = {}

function mission1.startMission1(player)
missionNameT.setMissionName("A New Life", player)
toggleAllControls(player,false,true,false)
dimension=math.random(10,50)
fadeCamera(player,false)
setTimer(mission1.fadein,1000,1,player,dimension)
end

function mission1.fadein(player,dimension)
setElementDimension(player,dimension)
setElementPosition(player,1349, -1670, 14)
setElementRotation(player,0,0,140)
mission1.xin=createPed(299,1344,-1680,18)
setElementDimension(mission1.xin,dimension)
setCameraMatrix(player,1352,-1665,16,1342,-1679,13,0,80)
--setPedLookAt( mission1.xin, 0,0,0, -1, 0, player )
--setPedLookAt( player, 0,0,0, -1, 0, mission1.xin )
fadeCamera(player,true)
setTimer(mission1.cutscene1_1,1000,1,player,dimension,mission1.xin)
end

function mission1.cutscene1_1(player,dimension,xin)
subtitlesT.setSubtitle(player,"???: Hey, ey, eeey!!", 3000)
setTimer(mission1.cutscene1_2,3000,1,player,dimension,xin)
end

function mission1.cutscene1_2(player,dimension,xin)
subtitlesT.setSubtitle(player,"Xin: I'm Xin, and who are you..?",3000)
pedTasksT.makePedWalkTo(xin,1344,-1673,14,0)
setTimer(mission1.cutscene1_3,4000,1,player,dimension,xin)
end

function mission1.cutscene1_3(player,dimension,xin)
subtitlesT.setSubtitle(player,"Xin: Not much of a talker, eh?",3000)
setTimer(mission1.cutscene1_4,3000,1,player,dimension,xin)
end

function mission1.cutscene1_4(player,dimension,xin)
subtitlesT.setSubtitle(player,"Xin: If you want to know who I am, \nI'm the one who can set you up in this town.",5000)
setTimer(mission1.cutscene1_5,5000,1,player,dimension,xin)
end

function mission1.cutscene1_5(player,dimension,xin)
subtitlesT.setSubtitle(player,"Xin: But first, prove yourself worthy.", 2000)
setTimer(mission1.cutscene1_6,2500,1,player,dimension,xin)
end

function mission1.cutscene1_6(player,dimension,xin)
subtitlesT.setSubtitle(player,"Xin: Take this revolver and kill a Vagos member up in Las Colinas. \nHe was giving me issues some time already.",6000) -- 110
setTimer(mission1.cutscene1_7,6500,1,player,dimension,xin)
end

function mission1.cutscene1_7(player,dimension,xin)
fadeCamera(player,false)
setTimer(mission1.gameplay1_1,1000,1,player,dimension,xin)
end

function mission1.gameplay1_1(player,dimension,xin)
destroyElement(xin)
setCameraTarget(player,player)
giveWeapon(player,24,18,true)
setElementPosition(player,1357,-1670,14)
setElementRotation(player,0,0,90)
toggleAllControls(player,true,true,false)
mission1.car=createVehicle(getVehicleModelFromName("Buffalo"),1363,-1658,14,0,0,-90,"X1N3RK1")
mission1.vagos=createPed(110,2151,-982,63,123.5)
aiT.setPedAsEnemyTo(mission1.vagos,player,30)
mission1.vagoscar=createVehicle(getVehicleModelFromName("Hermes"),2144,-987,62,0,0,190)
setElementDimension(mission1.vagos,dimension)
setElementDimension(mission1.vagoscar,dimension)
setElementDimension(mission1.car,dimension)
fadeCamera(player,true)
setTimer(mission1.gameplay1_2,1000,1,player,dimension,mission1.car,mission1.vagos,mission1.vagoscar)
end

function mission1.gameplay1_2(player,dimension,car,vagos,vagoscar)
subtitlesT.setSubtitle(player,"Kill the Vagos Member.",5000)
mission1.vagosMarker=createMarker(0,0,0,"arrow",0.5,255,0,0,255/2)
attachElements(mission1.vagosMarker,vagos,0,0,1.5)
mission1.vagosBlip=createBlipAttachedTo(vagos)
addEventHandler("onPedWasted",vagos,mission1.gameplay1_3)
mission1.tempplayer=player
mission1.tempdimension=dimension
mission1.tempxin=xin

end

function mission1.gameplay1_3(ammo, killer)
if killer == mission1.tempplayer then
setElementDimension(killer,0)
subtitlesT.setSubtitle(killer,"MISSION PASSED\n250$",5000)
givePlayerMoney(killer,250)
destroyElement(source)
destroyElement(mission1.vagos)
destroyElement(mission1.vagoscar)
destroyElement(mission1.car)
destroyElement(mission1.vagosBlip)
destroyElement(mission1.vagosMarker)
removeEventHandler("onPedWasted",vagos,mission1.gameplay1_3)
else
mission1.cutscene1_7(mission1.tempplayer,mission1.tempdimension,mission1.tempxi)
end
end

