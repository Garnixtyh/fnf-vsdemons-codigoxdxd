package states;
import flixel.FlxState;
import flixel.group.FlxGroup.FlxTypedGroup;
import flixel.FlxG;
import flixel.FlxSprite;

//menuItems
class MenuState extends MusicBeatState
{
    var fondo:FlxSprite;

    override function create() 
    {
        fondo = new FlxSprite(0,0).loadGraphic(Paths.image("work"));
        fondo.antialiasing = FlxG.save.data.antialiasing;
        add (fondo);
    }


    override function update(elapsed:Float)
    {
        if (controls.BACK)
            MusicBeatState.switchState(new MainMenuState());
        super.update(elapsed);
    }
} 
