package mobile.options;

import options.BaseOptionsMenu;
import options.Option;
#if sys
import sys.io.File;
#end
import flixel.FlxG;
import flixel.input.keyboard.FlxKey;

class MobileOptionsSubState extends BaseOptionsMenu
{
	#if android
	var storageTypes:Array<String> = ["EXTERNAL_DATA", "EXTERNAL_OBB", "EXTERNAL_MEDIA", "EXTERNAL"];
	var externalPaths:Array<String> = SUtil.checkExternalPaths(true);
	final lastStorageType:String = ClientPrefs.storageType;
	#end
	final hintOptions:Array<String> = ["No Gradient", "No Gradient (Old)", "Gradient", "Hidden"];

	public function new()
	{
		#if android if (!externalPaths.contains('\n')) storageTypes = storageTypes.concat(externalPaths); #end
		title = 'Mobile Options';
		rpcTitle = 'Mobile Options Menu'; // for Discord Rich Presence, fuck it

		var option:Option = new Option('Extra Controls',
		'If checked, extra ${MobileControls.mode == "Hitbox" ? 'hint' : 'button'} to simulate pressing the space bar will be enabled.',
		'mobileCEx',
		'bool',
		false);
		addOption(option);

		var option:Option = new Option('Taunt on Extra Controls',
		'If checked, when u press to extra ${MobileControls.mode == "Hitbox" ? 'hint' : 'button'} bf will be taunt.',
		'mobileCExTaunt',
		'bool',
		true);
		addOption(option);

		var option:Option = new Option('Mobile Controls Opacity',
		'Selects the opacity for the mobile buttons (be careful not to put it at 0 and lose track of your buttons).',
		'mobileCAlpha',
		'percent',
		null);
		option.scrollSpeed = 1;
		option.minValue = 0.0;
		option.maxValue = 1;
		option.changeValue = 0.1;
		option.decimals = 1;
		option.onChange = () ->
		{
			virtualPad.alpha = 0; // what? that fixed somehow
			virtualPad.alpha = curOption.getValue();
			if (MobileControls.enabled) {
				TitleState.volumeUpKeys = FlxG.sound.volumeUpKeys = [];
				TitleState.volumeDownKeys = FlxG.sound.volumeDownKeys = [];
				TitleState.muteKeys = FlxG.sound.muteKeys = [];
			} else {
				TitleState.volumeUpKeys = FlxG.sound.volumeUpKeys = [FlxKey.PLUS, FlxKey.NUMPADPLUS];
				TitleState.volumeDownKeys = FlxG.sound.volumeDownKeys = [FlxKey.MINUS, FlxKey.NUMPADMINUS];
				TitleState.muteKeys = FlxG.sound.muteKeys = [FlxKey.ZERO, FlxKey.NUMPADZERO];
			}
		};
		addOption(option);

		#if mobile
		var option:Option = new Option('Allow Phone Screensaver',
		'If checked, the phone will go sleep after going inactive for few seconds.\n(The time depends on your phone\'s options)',
		'screensaver',
		'bool',
		false);
		option.onChange = () -> lime.system.System.allowScreenTimeout = curOption.getValue();
		addOption(option);
		#end

		if (MobileControls.mode == "Hitbox")
		{
			var option:Option = new Option('Hitbox Design',
			'Choose how your hitbox should look like.',
			'hitboxType',
			'string',
			null,
			hintOptions);
			addOption(option);

			var option:Option = new Option('Hitbox Position',
			'If checked, the hitbox will be put at the bottom of the screen, otherwise will stay at the top.',
			'hitboxPos',
			'bool',
			true);
			addOption(option);
		}

		#if android
		var option:Option = new Option('Storage Type',
			'Which folder Psych Engine should use?\n(CHANGING THIS MAKES DELETE YOUR OLD FOLDER!!)',
			'storageType',
			'string',
			null,
			storageTypes);
			addOption(option);
		#end

		cameras = [FlxG.cameras.list[FlxG.cameras.list.length-1]];

		super();
	}

	#if android
	function onStorageChange():Void
	{
		File.saveContent(lime.system.System.applicationStorageDirectory + 'storagetype.txt', ClientPrefs.storageType);
	
		var lastStoragePath:String = StorageType.fromStrForce(lastStorageType) + '/';
	
		try
		{
			Sys.command('rm', ['-rf', lastStoragePath]);
		}
		catch (e:haxe.Exception)
			trace('Failed to remove last directory. (${e.message})');
	}
	#end

	override public function destroy() {
		super.destroy();
		#if android
		if (ClientPrefs.storageType != lastStorageType) {
			onStorageChange();
			CoolUtil.showPopUp('Storage Type has been changed and you needed restart the game!!\nPress OK to close the game.', 'Notice!');
			lime.system.System.exit(0);
		}
		#end
	}
}
