package;

import flixel.graphics.FlxGraphic;
import flixel.FlxG;
import flixel.FlxGame;
import flixel.FlxState;
import openfl.Assets;
import openfl.Lib;
import flixel.util.FlxColor;
import openfl.display.FPS;
import openfl.display.Sprite;
import openfl.events.Event;
import openfl.display.StageScaleMode;
import lime.app.Application;
#if desktop
import DiscordClient;
import cpp.vm.Gc;
#end
import haxe.io.Input;
import haxe.io.BytesBuffer;
#if mobile
import mobile.CopyState;
#end

#if linux
import lime.graphics.Image;
#end

using StringTools;

class Main extends Sprite {
	var game = {
		width: 1280,
		height: 720,
		initialState: StartupState.new,
		zoom: -1.0,
		framerate: 60,
		skipSplash: true,
		startFullscreen: false
	};

	public static var fpsVar:FPS;
	public static var changeID:Int = 0;

	public static var superDangerMode:Bool = Sys.args().contains("-troll");

    public static var __superCoolErrorMessagesArray:Array<String> = [
        "A fatal error has occ- wait what?",
        "missigno.",
        "oopsie daisies!! you did a fucky wucky!!",
        "i think you fogot a semicolon",
        "null balls reference",
        "get friday night funkd'",
        "engine skipped a heartbeat",
        "Impossible...",
        "Patience is key for success... Don't give up.",
        "It's no longer in its early stages... is it?",
        "It took me half a day to code that in",
        "You should make an issue... NOW!!",
        "> Crash Handler written by: yoshicrafter29",
        "broken ch-... wait what are we talking about",
        "could not access variable you.dad",
        "What have you done...",
        "THERE ARENT COUGARS IN SCRIPTING!!! I HEARD IT!!",
        "no, thats not from system.windows.forms",
        "you better link a screenshot if you make an issue, or at least the crash.txt",
        "stack trace more like dunno i dont have any jokes",
        "oh the misery. everybody wants to be my enemy",
        "have you heard of soulles dx",
        "i thought it was invincible",
        "did you deleted coconut.png",
        "have you heard of missing json's cousin null function reference",
        "sad that linux users wont see this banger of a crash handler",
        "woopsie",
        "oopsie",
        "woops",
        "silly me",
        "my bad",
        "first time, huh?",
        "did somebody say yoga",
        "we forget a thousand things everyday... make sure this is one of them.",
        "SAY GOODBYE TO YOUR KNEECAPS, CHUCKLEHEAD",
        "motherfucking ordinal 344 (TaskDialog) forcing me to create a even fancier window",
        "Died due to missing a sawblade. (Press Space to dodge!)",
        "yes rico, kaboom.",
        "hey, while in freeplay, press shift while pressing space",
        "goofy ahh engine",
        "pssst, try typing debug7 in the options menu",
        "this crash handler is sponsored by rai-",
        "",
        "did you know a jiffy is an actual measurement of time",
        "how many hurt notes did you put",
        "FPS: 0",
        "\r\ni am a secret message",
        "this is garnet",
        "Error: Sorry i already have a girlfriend",
        "did you know theres a total of 51 silly messages",
        "whoopsies looks like i forgot to fix this",
        "Game used Crash. It's super effective!"
    ];

	// You can pretty much ignore everything from here on - your code should go in your states.

	public static function main():Void {
		Lib.current.addChild(new Main());
	}

	public function new() {
		super();
		#if mobile
		#if android
		SUtil.doPermissionsShit();
		#end
		Sys.setCwd(SUtil.getStorageDirectory());
		#end

		CrashHandler.init();

		#if windows //DPI AWARENESS BABY
		@:functionCode('
		#include <Windows.h>
		SetProcessDPIAware()
		DisableProcessWindowsGhosting()
		')
		#end

		if (stage != null) {
			init();
		} else {
			addEventListener(Event.ADDED_TO_STAGE, init);
		}
	}

	private function init(?E:Event):Void {
		if (hasEventListener(Event.ADDED_TO_STAGE)) {
			removeEventListener(Event.ADDED_TO_STAGE, init);
		}

		setupGame();
	}

	private function setupGame():Void {
		#if (openfl <= "9.2.0")
		var stageWidth:Int = Lib.current.stage.stageWidth;
		var stageHeight:Int = Lib.current.stage.stageHeight;

		if (game.zoom == -1.0) {
			var ratioX:Float = stageWidth / game.width;
			var ratioY:Float = stageHeight / game.height;
			game.zoom = Math.min(ratioX, ratioY);
			game.width = Math.ceil(stageWidth / game.zoom);
			game.height = Math.ceil(stageHeight / game.zoom);
			game.skipSplash = true; // if the default flixel splash screen should be skipped
		};
		#end

		ClientPrefs.loadDefaultKeys();

		addChild(new FlxGame(game.width, game.height, #if (mobile && MODS_ALLOWED) !CopyState.checkExistingFiles() ? CopyState : #end game.initialState, #if (flixel < "5.0.0") game.zoom, #end game.framerate, game.framerate, game.skipSplash, game.startFullscreen));

		fpsVar = new FPS(10, 3, 0xFFFFFF);
		addChild(fpsVar);
		Lib.current.stage.align = "tl";
		Lib.current.stage.scaleMode = StageScaleMode.NO_SCALE;
		if (fpsVar != null) {
			fpsVar.visible = ClientPrefs.showFPS;
		}

		FlxG.autoPause = false;

		#if linux
		var icon = Image.fromFile("icon.png");
		Lib.current.stage.window.setIcon(icon);
		#end

		#if html5
		FlxG.mouse.visible = false;
		#end

		#if mobile
		lime.system.System.allowScreenTimeout = ClientPrefs.screensaver;
		#if android
		FlxG.android.preventDefaultKeys = [BACK]; 
		#end
		#end

		FlxG.signals.gameResized.add(function (w, h) {
			if(fpsVar != null)
				fpsVar.positionFPS(10, 3, Math.min(w / FlxG.width, h / FlxG.height));
		});

		#if DISCORD_ALLOWED
		if (!DiscordClient.initialized) {
			DiscordClient.initialize();
			Application.current.window.onClose.add(function() {
				DiscordClient.close();
			});
		}
		#end
	}

	public static function changeFPSColor(color:FlxColor) {
		fpsVar.textColor = color;
	}

	public static function readLine(buff:Input, l:Int):String {
		var line:Int = 0;
		var fuck = 0;
		while(fuck < l + 1) {
			var buf = new BytesBuffer();
			var last:Int = 0;
			var s = "";

			//trace(line);
			while ((last = buff.readByte()) != 10) {
				buf.addByte(last);
			}
			s = buf.getBytes().toString();
			if (s.charCodeAt(s.length - 1) == 13)
				s = s.substr(0, -1);
			if (line >= l) {
				return s;
			} else {
				line++;
			}
		}
		return "";
	}

	public static function getMemoryAmount():Float {
		#if windows
			try {
				var process = new Process('wmic ComputerSystem get TotalPhysicalMemory').stdout;
				var amount:Float = Std.parseFloat(readLine(process, 1));
				return amount;
			} catch(e) {
				return Math.pow(2, 32);
			}
		#else 
			return Math.pow(2, 32); // 4gb
		#end
	}
}
