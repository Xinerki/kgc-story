
missionNameT = {}

w,h=guiGetScreenSize()
missionNameT.missionNameFade = 255
missionNameT.missionNameFadeOut = false
missionNameT.missionNameFadeIn = false
missionNameT.missionName= ""
missionNameT.missionNameOn = false
missionNameT.outline=3
missionNameT.scale=2.5

function missionNameT.debugMissionName(cmd,text)
missionNameT.setMissionName_cl("A New Life")
end

function missionNameT.setMissionName_cl(text)

missionNameT.missionNameOn=true
missionNameT.missionNameFade=1
missionNameT.missionNameFadeIn=true
missionNameT.missionName=text
setTimer(missionNameT.startMissionNameFade,3000,1)

end

function missionNameT.startMissionNameFade()
missionNameT.missionNameFadeIn=false
missionNameT.missionNameFadeOut=true
end

function missionNameT.clearMissionName_cl()
missionNameT.missionNameOn=false
missionNameT.missionNameFade=0
missionNameT.missionNameFadeIn=false
missionNameT.missionNameFadeOut=false
missionNameT.missionName=nil
end

function missionNameT.renderMissionName()

if missionNameT.missionNameFadeOut then
missionNameT.missionNameFade=missionNameT.missionNameFade-10
end

if missionNameT.missionNameFadeIn and missionNameT.missionNameFade > 0 and missionNameT.missionNameFade <= 250 then
missionNameT.missionNameFade=missionNameT.missionNameFade+10
end

if missionNameT.missionNameFade<2 then missionNameT.clearMissionName_cl() end

if missionNameT.missionNameOn and missionNameT.missionName then
missionNameT.missionname_x=w/2
missionNameT.missionname_y=h-h/4

dxDrawText(missionNameT.missionName,missionNameT.missionname_x+missionNameT.outline,missionNameT.missionname_y+missionNameT.outline,0,0,tocolor(0,0,0,missionNameT.missionNameFade),missionNameT.scale,"pricedown","left")
dxDrawText(missionNameT.missionName,missionNameT.missionname_x+missionNameT.outline,missionNameT.missionname_y-missionNameT.outline,0,0,tocolor(0,0,0,missionNameT.missionNameFade),missionNameT.scale,"pricedown","left")
dxDrawText(missionNameT.missionName,missionNameT.missionname_x-missionNameT.outline,missionNameT.missionname_y+missionNameT.outline,0,0,tocolor(0,0,0,missionNameT.missionNameFade),missionNameT.scale,"pricedown","left")
dxDrawText(missionNameT.missionName,missionNameT.missionname_x-missionNameT.outline,missionNameT.missionname_y-missionNameT.outline,0,0,tocolor(0,0,0,missionNameT.missionNameFade),missionNameT.scale,"pricedown","left")

dxDrawText(missionNameT.missionName,missionNameT.missionname_x,missionNameT.missionname_y,0,0,tocolor(240,151,63,missionNameT.missionNameFade),missionNameT.scale,"pricedown","left")
end

end

--addCommandHandler( "mission", debugMissionName )

addEvent("story.missionName.triggerRendering",true)
addEventHandler("story.missionName.triggerRendering",root,missionNameT.setMissionName_cl)

addEvent("story.missionName.clearRendering",true)
addEventHandler("story.missionName.clearRendering",root,missionNameT.clearMissionName_cl)