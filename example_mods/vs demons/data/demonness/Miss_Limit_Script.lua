local missesLeft = 10 --aqui cambia si cambias de parecer el numero de fallos

function onCreatePost()
	--si
		setProperty('scoreTxt.alpha', 0)
	
		makeLuaText('MissLimitScoreText', 'Miss Limit: ' ..missesLeft.. ' | Score: 0 | Misses: 0 | Rating: ...', 1000, getProperty('healthBar.x') - 200, getProperty('healthBar.y') + 35)
		setTextSize('MissLimitScoreText', 20)
		addLuaText('MissLimitScoreText')
end

function goodNoteHit()
	if missMode then
		setProperty('MissLimitScoreText.scale.x', 1.12)
		setProperty('MissLimitScoreText.scale.y', 1.12)
		runTimer('scaleback', 0.01)
	end
end

function onTimerCompleted(tag)
	if tag == 'scaleback' then
		doTweenX('MissLimitScoreTextScaleX', 'MissLimitScoreText.scale', 1, 0.5, 'sineOut')
		doTweenY('MissLimitScoreTextScaleY', 'MissLimitScoreText.scale', 1, 0.5, 'sineOut')
	end
end

function onUpdate()
	if getProperty('songMisses') > missesLeft then
		setProperty('health', -500)
	end
	if hits >= 1 then
		setTextString('MissLimitScoreText', 'Miss Limit: '..missesLeft.. ' | Score: '..score..' | Misses: '..getProperty('songMisses')..' | Rating: ' ..getProperty('ratingName').. ' - ' ..getProperty('ratingFC'))
	end
end