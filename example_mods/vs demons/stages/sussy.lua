function onCreate()
	-- background shit

        makeLuaSprite('piso', 'nave',-900,-500);
	setLuaSpriteScrollFactor('piso', 1, 1);
        scaleObject('piso', 1, 1);
	
        makeLuaSprite('cillas', 'nose',-900,-500);
	setLuaSpriteScrollFactor('cillas', 1, 1);
        scaleObject('cillas', 1, 1);         

	addLuaSprite('piso', false);
        addLuaSprite('cillas', true);
	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end