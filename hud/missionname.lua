
w,h=guiGetScreenSize()
missionNameFade = 255
missionNameFadeOut = false
missionNameFadeIn = false
missionName= ""
missionNameOn = false
outline=3
scale=2.5

function onRender()

renderMissionName()

end

function debugMissionName(cmd,text)
setMissionName("A New Life")
end

function setMissionName(text)

missionNameOn=true
missionNameFade=1
missionNameFadeIn=true
missionName=text
setTimer(startMissionNameFade,3000,1)

end

function startMissionNameFade()
missionNameFadeIn=false
missionNameFadeOut=true
end

function clearMissionName()
missionNameOn=false
missionNameFade=0
missionNameFadeIn=false
missionNameFadeOut=false
missionName=nil
end

function renderMissionName()

if missionNameFadeOut then
missionNameFade=missionNameFade-10
end

if missionNameFadeIn and missionNameFade > 0 and missionNameFade <= 250 then
missionNameFade=missionNameFade+10
end

if missionNameFade<2 then clearMissionName() end

if missionNameOn and missionName then
missionname_x=w/2+w/4
missionname_y=h-h/4

dxDrawText(missionName,missionname_x+outline,missionname_y+outline,0,0,tocolor(0,0,0,missionNameFade),scale,"pricedown","left")
dxDrawText(missionName,missionname_x+outline,missionname_y-outline,0,0,tocolor(0,0,0,missionNameFade),scale,"pricedown","left")
dxDrawText(missionName,missionname_x-outline,missionname_y+outline,0,0,tocolor(0,0,0,missionNameFade),scale,"pricedown","left")
dxDrawText(missionName,missionname_x-outline,missionname_y-outline,0,0,tocolor(0,0,0,missionNameFade),scale,"pricedown","left")

dxDrawText(missionName,missionname_x,missionname_y,0,0,tocolor(240,151,63,missionNameFade),scale,"pricedown","left")
end

end

addEventHandler("onClientRender",root,onRender)
addCommandHandler( "mission", debugMissionName )