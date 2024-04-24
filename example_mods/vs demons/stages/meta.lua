function onCreate()
	-- background shit
	makeLuaSprite('stageback', 'meta', 0,0);
	setLuaSpriteScrollFactor('stageback', 1, 1);
        scaleObject('stageback', 1.0, 1.0);
	
	makeLuaSprite('humo', 'humo', 0,0);
	setLuaSpriteScrollFactor('humo', 1, 1);
	scaleObject('humo', 1.0, 1.0);

	addLuaSprite('stageback', false);
	addLuaSprite('humo', true);
	
      
	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end