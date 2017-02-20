
w,h=guiGetScreenSize()

subtitlesT = {}
subtitlesT.subtitle=""
subtitlesT.showingSubtitle=false
subtitlesT.outline=2
subtitlesT.color=tocolor(255,255,255,255)

function subtitlesT.debug(cmd,text)
subtitlesT.setSubtitle(tostring(text),5000)
end

function subtitlesT.setSubtitle(text,time,r,g,b,a)
if isTimer(subtitlesT.timer) then killTimer(subtitlesT.timer) end
subtitlesT.showingSubtitle=true
subtitlesT.subtitle=text
subtitlesT.timer=setTimer(subtitlesT.clearSubtitle,time,1)
subtitlesT.color=tocolor(r,g,b,a)
end

function subtitlesT.clearSubtitle()
subtitlesT.showingSubtitle=false
subtitlesT.subtitle=nil
end

function subtitlesT.render ()

--dxDrawText("t#32FF32e#3232FFs#32FF32t" --[[colorful test]] , 0, 1000*0.75, w, h, tocolor(240,151,63,255), 2, "default", "center", "center", false, false, false, true)

if subtitlesT.showingSubtitle == true then
--x=w--/2*2
x=0
y=h*0.75

local tempSubtitle=removeHex(subtitlesT.subtitle)

dxDrawText(tempSubtitle,x+subtitlesT.outline,y+subtitlesT.outline,w,h,tocolor(0,0,0,255),2,"default-bold","center", "center", false, false, false, true)
dxDrawText(tempSubtitle,x-subtitlesT.outline,y+subtitlesT.outline,w,h,tocolor(0,0,0,255),2,"default-bold","center", "center", false, false, false, true)
dxDrawText(tempSubtitle,x+subtitlesT.outline,y-subtitlesT.outline,w,h,tocolor(0,0,0,255),2,"default-bold","center", "center", false, false, false, true)
dxDrawText(tempSubtitle,x-subtitlesT.outline,y-subtitlesT.outline,w,h,tocolor(0,0,0,255),2,"default-bold","center", "center", false, false, false, true)

dxDrawText(subtitlesT.subtitle,x,y,w,h,subtitlesT.color,2,"default-bold","center", "center", false, false, false, true)
end
--dxDrawText( string text, float left, float top [, float right=left, float bottom=top, int color=white,                   float scale=1, mixed font="default", string alignX="left", string alignY="top",                  bool clip=false, bool wordBreak=false, bool postGUI=false,                  bool colorCoded=false, bool subPixelPositioning=false,                   float fRotation=0, float fRotationCenterX=0, float fRotationCenterY=0 ] )

end

--addCommandHandler("debug",subtitlesT.debug)

addEvent("story.subtitles.setSubtitle",true)
addEventHandler( "story.subtitles.setSubtitle", root, subtitlesT.setSubtitle )