
missions = {}

function missions.renderMissionMarkers()
for i,v in ipairs(getElementsByType('marker')) do
if getElementData(v,"story.isMissionMarker") then

local x,y,z=getElementPosition(v)
local isUsed=getElementData(v,"story.isMissionMarkerUsed")
local usedBy=getElementData(v,"story.missionMarkerUsedBy")
if getDistanceBetweenPoints3D( x,y,z,getElementPosition(localPlayer) ) < 10 then
local x,y=getScreenFromWorldPosition( x,y,z+2 )
local outline=2
local scale=2
r,g,b=getMarkerColor(v)
if x and y and getElementDimension(v) == getElementDimension(localPlayer) then
x=x*2
if getElementData(v, "story.isMissionMarker1P") then
if isUsed then

dxDrawText(getElementData(v,"story.missionMarkerName").."\n1 Player".."\nCurrently played by: "..getPlayerName(usedBy),x+outline,y-outline,0,0,tocolor(0,0,0,255),scale,"default-bold","center")
dxDrawText(getElementData(v,"story.missionMarkerName").."\n1 Player".."\nCurrently played by: "..getPlayerName(usedBy),x-outline,y+outline,0,0,tocolor(0,0,0,255),scale,"default-bold","center")
dxDrawText(getElementData(v,"story.missionMarkerName").."\n1 Player".."\nCurrently played by: "..getPlayerName(usedBy),x+outline,y+outline,0,0,tocolor(0,0,0,255),scale,"default-bold","center")
dxDrawText(getElementData(v,"story.missionMarkerName").."\n1 Player".."\nCurrently played by: "..getPlayerName(usedBy),x-outline,y-outline,0,0,tocolor(0,0,0,255),scale,"default-bold","center")

dxDrawText(getElementData(v,"story.missionMarkerName").."\n1 Player".."\nCurrently played by: "..getPlayerName(usedBy),x,y,0,0,tocolor(r,g,b,255),scale,"default-bold","center")

else

dxDrawText(getElementData(v,"story.missionMarkerName").."\n1 Player".."\nAvailable to play.",x+outline,y-outline,0,0,tocolor(0,0,0,255),scale,"default-bold","center")
dxDrawText(getElementData(v,"story.missionMarkerName").."\n1 Player".."\nAvailable to play.",x-outline,y+outline,0,0,tocolor(0,0,0,255),scale,"default-bold","center")
dxDrawText(getElementData(v,"story.missionMarkerName").."\n1 Player".."\nAvailable to play.",x+outline,y+outline,0,0,tocolor(0,0,0,255),scale,"default-bold","center")
dxDrawText(getElementData(v,"story.missionMarkerName").."\n1 Player".."\nAvailable to play.",x-outline,y-outline,0,0,tocolor(0,0,0,255),scale,"default-bold","center")

dxDrawText(getElementData(v,"story.missionMarkerName").."\n1 Player".."\nAvailable to play.",x,y,0,0,tocolor(r,g,b,255),scale,"default-bold","center")
end
end
if getElementData(v, "story.isMissionMarker2P") and not getElementData(v, "story.isPlayer1inMission") then

dxDrawText(getElementData(v,"story.missionMarkerName").."\n2 Players".."\nAvailable to play.",x+outline,y-outline,0,0,tocolor(0,0,0,255),scale,"default-bold","center")
dxDrawText(getElementData(v,"story.missionMarkerName").."\n2 Players".."\nAvailable to play.",x-outline,y+outline,0,0,tocolor(0,0,0,255),scale,"default-bold","center")
dxDrawText(getElementData(v,"story.missionMarkerName").."\n2 Players".."\nAvailable to play.",x+outline,y+outline,0,0,tocolor(0,0,0,255),scale,"default-bold","center")
dxDrawText(getElementData(v,"story.missionMarkerName").."\n2 Players".."\nAvailable to play.",x-outline,y-outline,0,0,tocolor(0,0,0,255),scale,"default-bold","center")

dxDrawText(getElementData(v,"story.missionMarkerName").."\n2 Players".."\nAvailable to play.",x,y,0,0,tocolor(r,g,b,255),scale,"default-bold","center")
end
if getElementData(v, "story.isMissionMarker2P") and getElementData(v, "story.isPlayer1inMission") and not getElementData(v, "story.isPlayer2inMission") then
dxDrawText(getElementData(v,"story.missionMarkerName").."\n2 Players".."\nWaiting for player 2: "..getPlayerName(getElementData(v, "story.player1")),x+outline,y+outline,0,0,tocolor(0,0,0,255),scale,"default-bold","center")
dxDrawText(getElementData(v,"story.missionMarkerName").."\n2 Players".."\nWaiting for player 2: "..getPlayerName(getElementData(v, "story.player1")),x-outline,y-outline,0,0,tocolor(0,0,0,255),scale,"default-bold","center")
dxDrawText(getElementData(v,"story.missionMarkerName").."\n2 Players".."\nWaiting for player 2: "..getPlayerName(getElementData(v, "story.player1")),x+outline,y-outline,0,0,tocolor(0,0,0,255),scale,"default-bold","center")
dxDrawText(getElementData(v,"story.missionMarkerName").."\n2 Players".."\nWaiting for player 2: "..getPlayerName(getElementData(v, "story.player1")),x-outline,y+outline,0,0,tocolor(0,0,0,255),scale,"default-bold","center")

dxDrawText(getElementData(v,"story.missionMarkerName").."\n2 Players".."\nWaiting for player 2: "..getPlayerName(getElementData(v, "story.player1")),x,y,0,0,tocolor(r,g,b,255),scale,"default-bold","center")
end

if getElementData(v, "story.isMissionMarker2P") and getElementData(v, "story.isPlayer1inMission") and getElementData(v, "story.isPlayer2inMission") then
dxDrawText(getElementData(v,"story.missionMarkerName").."\n2 Players".."\nCurrently played by: [P1]"..getPlayerName(getElementData(v, "story.player1")).." and [P2]"..getPlayerName(getElementData(v, "story.player2")),x+outline,y+outline,0,0,tocolor(0,0,0,255),scale,"default-bold","center")
dxDrawText(getElementData(v,"story.missionMarkerName").."\n2 Players".."\nCurrently played by: [P1]"..getPlayerName(getElementData(v, "story.player1")).." and [P2]"..getPlayerName(getElementData(v, "story.player2")),x-outline,y-outline,0,0,tocolor(0,0,0,255),scale,"default-bold","center")
dxDrawText(getElementData(v,"story.missionMarkerName").."\n2 Players".."\nCurrently played by: [P1]"..getPlayerName(getElementData(v, "story.player1")).." and [P2]"..getPlayerName(getElementData(v, "story.player2")),x+outline,y-outline,0,0,tocolor(0,0,0,255),scale,"default-bold","center")
dxDrawText(getElementData(v,"story.missionMarkerName").."\n2 Players".."\nCurrently played by: [P1]"..getPlayerName(getElementData(v, "story.player1")).." and [P2]"..getPlayerName(getElementData(v, "story.player2")),x-outline,y+outline,0,0,tocolor(0,0,0,255),scale,"default-bold","center")

dxDrawText(getElementData(v,"story.missionMarkerName").."\n2 Players".."\nCurrently played by: [P1]"..getPlayerName(getElementData(v, "story.player1")).." and [P2]"..getPlayerName(getElementData(v, "story.player2")),x,y,0,0,tocolor(r,g,b,255),scale,"default-bold","center")
end
end
--dxDrawText( string text, float left, float top [, float right=left, float bottom=top, int color=white,                   float scale=1, mixed font="default", string alignX="left", string alignY="top",                  bool clip=false, bool wordBreak=false, bool postGUI=false,                  bool colorCoded=false, bool subPixelPositioning=false,                   float fRotation=0, float fRotationCenterX=0, float fRotationCenterY=0 ] )

end
end
end
end