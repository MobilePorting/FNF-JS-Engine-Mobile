package psychlua;

import flixel.FlxObject;

class CustomSubstate extends MusicBeatSubstate {
	public static var name:String = 'unnamed';
	public static var instance:CustomSubstate;

	public static function implement(funk:FunkinLua) {
		funk.set("openCustomSubstate", openCustomSubstate);
		funk.set("closeCustomSubstate", closeCustomSubstate);
		funk.set("insertToCustomSubstate", insertToCustomSubstate);
	}

	public static function openCustomSubstate(name:String, ?pauseGame:Bool = false) {
		if(pauseGame) {
			PlayState.instance.persistentUpdate = false;
			PlayState.instance.persistentDraw = true;
			PlayState.instance.paused = true;
			if(FlxG.sound.music != null) {
				FlxG.sound.music.pause();
				PlayState.instance.vocals.pause();
			}
		}
		PlayState.instance.openSubState(new CustomSubstate(name));
	}

	public static function closeCustomSubstate():Bool {
		if(instance != null) {
			PlayState.instance.closeSubState();
			instance = null;
			return true;
		}
		return false;
	}

	public static function insertToCustomSubstate(tag:String, ?pos:Int = -1)
    {
        if(instance != null)
        {
            var tagObject:FlxObject = cast (PlayState.instance.variables.get(tag), FlxObject);
            #if LUA_ALLOWED if(tagObject == null) tagObject = cast (PlayState.instance.modchartSprites.get(tag), FlxObject); #end

            if(tagObject != null)
            {
                if(pos < 0) instance.add(tagObject);
                else instance.insert(pos, tagObject);
                return true;
            }
        }
        return false;
    }

	override function create() {
		instance = this;
		PlayState.instance.callOnLuas('onCustomSubstateCreate', [name]);
		super.create();
		PlayState.instance.callOnLuas('onCustomSubstateCreatePost', [name]);
	}

	public function new(name:String) {
		CustomSubstate.name = name;
		super();
		cameras = [FlxG.cameras.list[FlxG.cameras.list.length - 1]];
	}

	override function update(elapsed:Float) {
		PlayState.instance.callOnLuas('onCustomSubstateUpdate', [name, elapsed]);
		super.update(elapsed);
		PlayState.instance.callOnLuas('onCustomSubstateUpdatePost', [name, elapsed]);
	}

	override function destroy() {
		PlayState.instance.callOnLuas('onCustomSubstateDestroy', [name]);
		name = 'unnamed';
		super.destroy();
	}
}