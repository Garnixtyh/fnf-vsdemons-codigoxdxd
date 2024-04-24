function onCreate()
	-- background shit
	makeLuaSprite('cielo', 'cementerio/cielo',-1100,-500);
	setLuaSpriteScrollFactor('cielo', 0.9, 0.9);
        scaleObject('cielo', 0.9, 0.9);

        makeLuaSprite('piso', 'cementerio/piso',-1100,550);
	setLuaSpriteScrollFactor('piso', 0.9, 0.7);
        scaleObject('piso', 0.9, 0.9);

        makeLuaSprite('rejas', 'cementerio/rejas',-1400,-100);
	setLuaSpriteScrollFactor('rejas', 0.7, 0.7);
        scaleObject('rejas', 0.9, 0.9);
	

        makeLuaSprite('tumbas', 'cementerio/tumbas',-750,370);
	setLuaSpriteScrollFactor('tumbas', 1.1, 1.1);
        scaleObject('tumbas', 0.7, 0.7);

        makeLuaSprite('mausoleo', 'cementerio/mausoleo',-400,-835);
	setLuaSpriteScrollFactor('mausoleo', 0.9, 0.9);
        scaleObject('mausoleo', 1.3, 1.2);       

        addLuaSprite('cielo', false);
        addLuaSprite('rejas', false);
        addLuaSprite('mausoleo', false);
	addLuaSprite('piso', false);
        addLuaSprite('tumbas', true);
	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end