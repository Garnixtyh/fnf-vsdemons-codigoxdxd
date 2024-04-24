
-- Script by Slushi --

local time = 3.0;
local lifeToDrain = 0.003;
local drainSpeed = 0.3;
local noteTexture = 'fuegos';

------------------------
local eventActived = false;
local sineElap = 0;

function onCreate()
	for i = 0, getProperty('unspawnNotes.length')-1 do
		if getPropertyFromGroup('unspawnNotes', i, 'noteType') == 'drainLife-note' then
			setPropertyFromGroup('unspawnNotes', i, 'texture', noteTexture);
			setPropertyFromGroup('unspawnNotes', i, 'hitCausesMiss', false);

			if getPropertyFromGroup('unspawnNotes', i, 'mustPress') then
				setPropertyFromGroup('unspawnNotes', i, 'ignoreNote', true);
			end
		end
	end
end

function goodNoteHit(id, noteData, noteType, isSustainNote)
	if noteType == 'drainLife-note' then
		eventActived = true;
		runTimer("drainLifeTimer", time);
    end
end

function onUpdatePost(elapsed)
	if eventActived then
		sineElap = sineElap + (elapsed * drainSpeed);
		setProperty('health', getProperty('health') - lifeToDrain);
	end
end

function onTimerCompleted(tag, loops, loopsLeft)
	if tag == "drainLifeTimer" then
		eventActived = false;
		sineElap = 0;
	end
end

