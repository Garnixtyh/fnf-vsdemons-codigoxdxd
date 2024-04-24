function onCreate()
    setProperty('skipCountdown', true)
    setProperty('camHUD.alpha',0)
end
if curBeat == 31 then
    doTweenAlpha('hudalpha','camHUD',1,0.49)
end