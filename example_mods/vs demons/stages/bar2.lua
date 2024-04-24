function onCreate()
	-- background shit
	makeLuaSprite('stageback', 'bar/pared', 0,0);
	setLuaSpriteScrollFactor('stageback', 1.0, 1.1);
        scaleObject('stageback', 1.0, 1.0);

        makeLuaSprite('piso', 'bar/piso', 0,0);
	setLuaSpriteScrollFactor('piso', 1.0, 1.0);
	scaleObject('piso', 1.0, 1.0);
       
	makeLuaSprite('rocola', 'bar/rocola', 0,0);
	setLuaSpriteScrollFactor('rocola', 1.0, 1.0);
	scaleObject('rocola', 1.0, 1.0);

	makeLuaSprite('extras', 'bar/extras', 400,0);
	setLuaSpriteScrollFactor('extras', 1.3, 1.2);
	scaleObject('extras', 1.0, 1.0);
	makeAnimatedLuaSprite('sul','bar/chicos',800,1050);
	addAnimationByPrefix('sul','sul','sul', 24, true);
	setScrollFactor('sul', 1, 1);

	makeAnimatedLuaSprite('band','bar/chicos',1100,990);
	addAnimationByPrefix('band','band','band', 24, true);
	setScrollFactor('band', 1, 1);

	makeAnimatedLuaSprite('rene','bar/chicos',1400,940);
	addAnimationByPrefix('rene','rene','rene1', 24, true);
	setScrollFactor('rene', 1, 1);



	addLuaSprite('stageback', false);
	addLuaSprite('rocola', false);
    addLuaSprite('piso', false);

	addLuaSprite('band', false);
	addLuaSprite('sul', false);
	addLuaSprite('rene', false);
	
	addLuaSprite('extras', true);
	
      
	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end