
subtitlesT = {}

function subtitlesT.setSubtitle(player,text,time,r,g,b,a)
triggerClientEvent( player, "story.subtitles.setSubtitle", resourceRoot, text, time, r or 255,g or 255,b or 255,a or 255 )
end