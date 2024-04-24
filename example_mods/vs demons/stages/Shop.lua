function onCreate()
	-- background shit
	makeLuaSprite('bg', 'denics-shop/BG', 0, 0)
	addLuaSprite('bg')
	setScrollFactor('bg', 0.9, 0.9);

	makeLuaSprite('tienda', 'denics-shop/tienda', 0, 0)
	addLuaSprite('tienda', true);
	setScrollFactor('tienda', 0.9, 0.9);


end

function onCreatePost()
	setProperty('timeTxt.visible', false)
	setProperty('iconP1.visible', false)
	setProperty('iconP2.visible', false)
	setProperty('healthBar.visible', false)
	setProperty('healthBarBG.visible', false)
	setProperty('scoreTxt.visible', false)
end