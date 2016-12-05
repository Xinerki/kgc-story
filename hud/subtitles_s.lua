
subtitlesT = {}

function subtitlesT.setSubtitle(player,text,time)
triggerClientEvent( player, "story.subtitles.setSubtitle", player, text, time )
end