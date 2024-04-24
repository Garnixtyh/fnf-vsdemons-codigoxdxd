function onCreate()
    setProperty('skipCountdown', true)
    setProperty('camHUD.alpha',0)
end

function onSongStart()
    doTweenZoom('beginningzoom','camGame',0.7,7.87,'sineInOut')
end

function onBeatHit()
	if curBeat % 2 == 0 then
		playAnim('sleepysusan', 'bop', false)
		playAnim('window', 'bop', false)
	end
end

function onUpdate(elasped)
    if curBeat == 26 then
        setProperty('camZooming', false)
        setProperty('defaultCamZoom',0.85)
    end

    if curBeat == 28 then
        setProperty('camZooming', true)
    end

    if curBeat == 30 then
        setProperty('camZooming', false)
    end

    if curBeat == 31 then
        doTweenAlpha('hudalpha','camHUD',1,0.49)
    end

    if curBeat == 32 then
        setProperty('defaultCamZoom',0.7)
        setProperty('camZooming', true)
    end

    if curBeat == 128 or curBeat == 288 then
        setProperty('isCameraOnForcedPos', true)
        setProperty('camFollow.x', 640)
		setProperty('camFollow.y', 310)
        setProperty('defaultCamZoom',0.85)
    end

    if curBeat == 144 then

        setProperty('defaultCamZoom',0.7)
    end

    if curBeat == 159 then
        setProperty('isCameraOnForcedPos', false)
    end

    if curBeat == 320 then
        setProperty('camHUD.alpha',0)
        setProperty('camGame.alpha',0)
    end
end