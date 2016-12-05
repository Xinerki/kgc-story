
w,h=guiGetScreenSize()

subtitlesT = {}
subtitlesT.subtitle=""
subtitlesT.showingSubtitle=false
subtitlesT.outline=2

function subtitlesT.debug(cmd,text)
subtitlesT.setSubtitle(tostring(text),5000)
end

function subtitlesT.setSubtitle(text,time)
if isTimer(subtitlesT.timer) then killTimer(subtitlesT.timer) end
subtitlesT.showingSubtitle=true
subtitlesT.subtitle=text
subtitlesT.timer=setTimer(subtitlesT.clearSubtitle,time,1)
end

function subtitlesT.clearSubtitle()
subtitlesT.showingSubtitle=false
subtitlesT.subtitle=nil
end

function subtitlesT.render ()
if subtitlesT.showingSubtitle == true then
x=w/2*2
y=h/2+h/4

dxDrawText(subtitlesT.subtitle,x+subtitlesT.outline,y+subtitlesT.outline,0,0,tocolor(0,0,0,255),2,"default-bold","center")
dxDrawText(subtitlesT.subtitle,x-subtitlesT.outline,y+subtitlesT.outline,0,0,tocolor(0,0,0,255),2,"default-bold","center")
dxDrawText(subtitlesT.subtitle,x+subtitlesT.outline,y-subtitlesT.outline,0,0,tocolor(0,0,0,255),2,"default-bold","center")
dxDrawText(subtitlesT.subtitle,x-subtitlesT.outline,y-subtitlesT.outline,0,0,tocolor(0,0,0,255),2,"default-bold","center")

dxDrawText(subtitlesT.subtitle,x,y,0,0,tocolor(255,255,255,255),2,"default-bold","center")
end
--dxDrawText( string text, float left, float top [, float right=left, float bottom=top, int color=white,                   float scale=1, mixed font="default", string alignX="left", string alignY="top",                  bool clip=false, bool wordBreak=false, bool postGUI=false,                  bool colorCoded=false, bool subPixelPositioning=false,                   float fRotation=0, float fRotationCenterX=0, float fRotationCenterY=0 ] )

end

--addCommandHandler("debug",subtitlesT.debug)

addEvent("story.subtitles.setSubtitle",true)
addEventHandler( "story.subtitles.setSubtitle", root, subtitlesT.setSubtitle )