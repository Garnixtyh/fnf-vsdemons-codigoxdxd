--created by sloow

function onCreate()
    --imagem
    makeLuaSprite('fun','tarjetas/demonness', 200, 700) -- PRIMERA
    addLuaSprite('fun')
    setObjectCamera('fun', 'hud')
    scaleObject('fun', 1.1, 1.1)
end

function onStepHit()
    if curStep == 1 then
      
    end
    if curStep == 3 then
        doTweenY('funxtween', 'fun', 110, 0.5, linear)
    end
    if curStep == 32 then
        doTweenAlpha('funtween', 'fun', 0, 0.3, linear)
        doTweenX('funxtween', 'fun', 0, 0.5)
    end
end