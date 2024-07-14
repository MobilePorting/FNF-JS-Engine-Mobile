package;

import flixel.FlxG;
import flixel.util.FlxSave;
import flixel.input.keyboard.FlxKey;
import flixel.graphics.FlxGraphic;
import Controls;

class ClientPrefs { //default settings if it can't find a save file containing your current settings
	#if mobile
	public static var screensaver:Bool = false;
	#if android
	public static var storageType:String = "EXTERNAL_DATA";
	#end
	#end
	public static var mobileCAlpha:Float = FlxG.onMobile ? 0.6 : 0;
	public static var mobileCEx:Bool = false;
	public static var hitboxType:String = "No Gradient";
	public static var hitboxPos:Bool = true;
	public static var mobileCPlayStateVpad:Bool = false;
	public static var mobileCExTaunt:Bool = true;
	//Gameplay Settings
	public static var controllerMode:Bool = mobile.MobileControls.enabled;
	public static var downScroll:Bool = false;
	public static var middleScroll:Bool = false;
	public static var opponentStrums:Bool = true;
	public static var healthGainType:String = 'Psych Engine';
	public static var ghostTapping:Bool = true;
	public static var autoPause:Bool = true;
	public static var complexAccuracy:Bool = false;
	public static var startingSync:Bool = false;
	public static var resyncType:String = 'Psych';
	public static var noMarvJudge:Bool = false;
	public static var noReset:Bool = false;
	public static var antiCheatEnable:Bool = false;
	public static var instaRestart:Bool = false;
	public static var ezSpam:Bool = false;
	public static var shitGivesMiss:Bool = false;
	public static var ratingIntensity:String = 'Normal';
	public static var spaceVPose:Bool = true;
	public static var ghostTapAnim:Bool = true;
	public static var hitsoundVolume:Float = 0;
	public static var hitsoundType:String = 'osu!mania';
	public static var voiidTrollMode:Bool = false;
	public static var trollMaxSpeed:String = 'Medium';
	public static var missSoundShit:Bool = false;

	//Visuals & UI
	public static var noteSplashes:Bool = true;
	public static var oppNoteSplashes:Bool = true;
	public static var showNPS:Bool = true;
	public static var showComboInfo:Bool = true;
	public static var maxSplashLimit:Int = 16;
	public static var oppNoteAlpha:Float = 0.65;
	public static var hideHud:Bool = false;
	public static var hideScore:Bool = false;
	public static var tauntOnGo:Bool = true;
	public static var oldSusStyle:Bool = false;
	public static var showRendered:Bool = false;
	public static var showcaseMode:Bool = false;
	public static var timeBounce:Bool = true;
	public static var lengthIntro:Bool = true;
	public static var timebarShowSpeed:Bool = false;
	public static var botWatermark:Bool = true;
	public static var missRating:Bool = false;
	public static var resultsScreen:Bool = false;
	public static var compactNumbers:Bool = false;
	public static var scoreTxtSize:Int = 0;
	public static var noteColorStyle:String = 'Normal';
	public static var enableColorShader:Bool = true;
	public static var iconBopWhen:String = 'Every Beat';
	public static var cameraPanning:Bool = true;
	public static var panIntensity:Float = 1;
	public static var rateNameStuff:String = 'Quotes';
	public static var goldSickSFC:Bool = true;
	public static var colorRatingHit:Bool = true;
	public static var marvRateColor:String = 'Golden';
	public static var smoothHealth:Bool = true;
	public static var smoothHPBug:Bool = false;
	public static var noBopLimit:Bool = false;
	public static var denpaDrainBug:Bool = false;
	public static var ogHPColor:Bool = false;
	public static var timeBarType:String = 'Time Left';
	public static var scoreStyle:String = 'Psych Engine';
	public static var timeBarStyle:String = 'Vanilla';
	public static var healthBarStyle:String = 'Vanilla';
	public static var watermarkStyle:String = 'Vanilla';
	public static var botTxtStyle:String = 'Vanilla';
	public static var ytWatermarkPosition:String = 'Hidden';
	public static var strumLitStyle:String = 'Full Anim';
	public static var noteStyleThing:String = 'Default';
	public static var bfIconStyle:String = 'Default';
	public static var ratingType:String = 'Base FNF';
	public static var iconBounceType:String = 'Golden Apple';
	public static var splashType:String = 'Psych Engine';
	public static var longHPBar:Bool = false;
	public static var longFCName:Bool = false;
	public static var healthDisplay:Bool = false;
	public static var opponentRateCount:Bool = true;
	public static var showMS:Bool = false;
	public static var wrongCameras:Bool = false;
	public static var flashing:Bool = true;
	public static var camZooms:Bool = true;
	public static var ratingCounter:Bool = false;
	public static var showNotes:Bool = true;
	public static var scoreZoom:Bool = true;
	public static var healthBarAlpha:Float = 1;
	public static var laneUnderlay:Bool = false;
	public static var laneUnderlayAlpha:Float = 1;
	public static var showFPS:Bool = true;
	public static var randomBotplayText:Bool = true;
	public static var botTxtFade:Bool = true;
	public static var pauseMusic:String = 'Tea Time';
	public static var daMenuMusic:String = 'Default';
	public static var checkForUpdates:Bool = true;
	public static var comboStacking = true;
	public static var showRamUsage:Bool = true;
	public static var showMaxRamUsage:Bool = true;
	public static var debugInfo:Bool = false;
	public static var tipTexts:Bool = true;
	public static var discordRPC:Bool = true;

	//Graphics
	public static var lowQuality:Bool = false;
	public static var globalAntialiasing:Bool = true;
	public static var shaders:Bool = true;
	public static var cacheOnGPU:Bool = false;
	public static var dynamicSpawnTime:Bool = false;
	public static var noteSpawnTime:Float = 1;
	public static var resolution:String = '1280x720';
	public static var framerate:Int = 60;

	//Optimization
	public static var charsAndBG:Bool = true;
	public static var enableGC:Bool = true;
	public static var opponentLightStrum:Bool = true;
	public static var botLightStrum:Bool = true;
	public static var playerLightStrum:Bool = true;
	public static var ratesAndCombo:Bool = false;
	public static var comboPopup:Bool = false;
	public static var songLoading:Bool = true;
	public static var noSpawnFunc:Bool = false;
	public static var noHitFuncs:Bool = false;
	public static var lessBotLag:Bool = false;
	public static var fastNoteSpawn:Bool = false;

	//Secret Debug
	public static var noGunsRNG:Bool = false;
	public static var pbRControls:Bool = false;
	public static var rainbowFPS:Bool = false;

	//Unused
	public static var cursing:Bool = true;
	public static var autosaveCharts:Bool = true;
	public static var violence:Bool = true;
	public static var crossFadeData:Array<Dynamic> = ['Default', 'Healthbar', [255, 255, 255], 0.3, 0.35];
	public static var noPausing:Bool = false;

	//Note HSV
	public static var arrowHSV:Array<Array<Int>> = [[0, 0, 0], [0, 0, 0], [0, 0, 0], [0, 0, 0]];

	// Game Renderer
	public static var ffmpegMode:Bool = false;
	public static var ffmpegInfo:Bool = false;
	public static var targetFPS:Float = 60;
	public static var unlockFPS:Bool = false;
	public static var renderBitrate:Float = 5.0;
	public static var vidEncoder:String = 'libx264';
	public static var oldFFmpegMode:Bool = false;
	public static var lossless:Bool = false;
	public static var quality:Int = 50;
	public static var renderGCRate:Float = 5.0;
	public static var showRemainingTime:Bool = false;

	//Misc
	public static var JSEngineRecharts:Bool = false;
	public static var alwaysTriggerCutscene:Bool = false;

	//Gameplay Modifiers
	public static var gameplaySettings:Map<String, Dynamic> = [
		'scrollspeed' => 1.0,
		'scrolltype' => 'multiplicative', 
		// anyone reading this, amod is multiplicative speed mod, cmod is constant speed mod, and xmod is bpm based speed mod.
		// an amod example would be chartSpeed * multiplier
		// cmod would just be constantSpeed = chartSpeed
		// and xmod basically works by basing the speed on the bpm.
		// iirc (beatsPerSecond * (conductorToNoteDifference / 1000)) * noteSize (110 or something like that depending on it, prolly just use note.height)
		// bps is calculated by bpm / 60
		// oh yeah and you'd have to actually convert the difference to seconds which I already do, because this is based on beats and stuff. but it should work
		// just fine. but I wont implement it because I don't know how you handle sustains and other stuff like that.
		// oh yeah when you calculate the bps divide it by the songSpeed or rate because it wont scroll correctly when speeds exist.
		'songspeed' => 1.0,
		'healthgain' => 1.0,
		'healthloss' => 1.0,
		'instakill' => false,
		'onlySicks' => false,
		'practice' => false,
		'botplay' => false,
		'randommode' => false,
		'opponentplay' => false,
		'bothSides' => false,
		'opponentdrain' => false,
		'drainlevel' => 1,
		'flip' => false,
		'stairmode' => false,
		'wavemode' => false,
		'onekey' => false,
		'jacks' => 0,
		'randomspeed' => false,
		'randomspeedmin' => 0.5,
		'randomspeedmax' => 2,
		'thetrollingever' => false
	];

	//Gameplay Offset and Window stuff
	public static var ratingOffset:Int = 0;
	public static var perfectWindow:Int = 15;
	public static var sickWindow:Int = 45;
	public static var goodWindow:Int = 90;
	public static var badWindow:Int = 135;
	public static var safeFrames:Float = 10;
	public static var comboOffset:Array<Int> = [0, 0, 0, 0];
	public static var noteOffset:Int = 0;

	//Every key has two binds, add your key bind down here and then add your control on options/ControlsSubState.hx and Controls.hx
	public static var keyBinds:Map<String, Array<FlxKey>> = [
		//Key Bind, Name for ControlsSubState
		'note_left'		=> [A, LEFT],
		'note_down'		=> [S, DOWN],
		'note_up'		=> [W, UP],
		'note_right'	=> [D, RIGHT],
		'bot_energy'	=> [CONTROL, NONE],
		
		'ui_left'		=> [A, LEFT],
		'ui_down'		=> [S, DOWN],
		'ui_up'			=> [W, UP],
		'ui_right'		=> [D, RIGHT],
		
		'accept'		=> [SPACE, ENTER],
		'back'			=> [BACKSPACE, ESCAPE],
		'pause'			=> [ENTER, ESCAPE],
		'reset'			=> [R, NONE],
		
		'volume_mute'	=> [ZERO, NONE],
		'volume_up'		=> [NUMPADPLUS, PLUS],
		'volume_down'	=> [NUMPADMINUS, MINUS],
		
		'debug_1'		=> [SEVEN, NONE],
		'debug_2'		=> [EIGHT, NONE],
		'qt_taunt'		=> [SPACE, NONE]
	];
	public static var defaultKeys:Map<String, Array<FlxKey>> = null;

	public static function loadDefaultKeys() {
		defaultKeys = keyBinds.copy();
		//trace(defaultKeys);
	}

	public static function saveSettings() { //changes settings when you exit so that it doesn't reset every time you close the game
		#if mobile
		FlxG.save.data.screensaver = screensaver;
		#if android
		FlxG.save.data.storageType = storageType;
		#end
		#end
		FlxG.save.data.mobileCAlpha = mobileCAlpha;
		FlxG.save.data.mobileCEx = mobileCEx;
		FlxG.save.data.hitboxType = hitboxType;
		FlxG.save.data.hitboxPos = hitboxPos;
		FlxG.save.data.mobileCPlayStateVpad = mobileCPlayStateVpad;
		FlxG.save.data.mobileCExTaunt = mobileCExTaunt;
		//Gameplay Settings
		FlxG.save.data.controllerMode = controllerMode;
		FlxG.save.data.downScroll = downScroll;
		FlxG.save.data.middleScroll = middleScroll;
		FlxG.save.data.opponentStrums = opponentStrums;
		FlxG.save.data.healthGainType = healthGainType;
		FlxG.save.data.ghostTapping = ghostTapping;
		FlxG.save.data.autoPause = autoPause;
		FlxG.save.data.complexAccuracy = complexAccuracy;
		FlxG.save.data.startingSync = startingSync;
		FlxG.save.data.resyncType = resyncType;
		FlxG.save.data.noMarvJudge = noMarvJudge;
		FlxG.save.data.noReset = noReset;
		FlxG.save.data.antiCheatEnable = antiCheatEnable;
		FlxG.save.data.instaRestart = instaRestart;
		FlxG.save.data.ezSpam = ezSpam;
		FlxG.save.data.shitGivesMiss = shitGivesMiss;
		FlxG.save.data.ratingIntensity = ratingIntensity;
		FlxG.save.data.spaceVPose = spaceVPose;
		FlxG.save.data.ghostTapAnim = ghostTapAnim;
		FlxG.save.data.missSoundShit = missSoundShit;
		FlxG.save.data.hitsoundVolume = hitsoundVolume;
		FlxG.save.data.hitsoundType = hitsoundType;
		FlxG.save.data.voiidTrollMode = voiidTrollMode;
		FlxG.save.data.trollMaxSpeed = trollMaxSpeed;

		//Visuals & UI
		FlxG.save.data.noteSplashes = noteSplashes;
		FlxG.save.data.oppNoteSplashes = oppNoteSplashes;
		FlxG.save.data.showNPS = showNPS;
		FlxG.save.data.showComboInfo = showComboInfo;
		FlxG.save.data.maxSplashLimit = maxSplashLimit;
		FlxG.save.data.oppNoteAlpha = oppNoteAlpha;
		FlxG.save.data.hideHud = hideHud;
		FlxG.save.data.hideScore = hideScore;
		FlxG.save.data.tauntOnGo = tauntOnGo;
		FlxG.save.data.oldSusStyle = oldSusStyle;
		FlxG.save.data.showRendered = showRendered;
		FlxG.save.data.showcaseMode = showcaseMode;
		FlxG.save.data.timeBounce = timeBounce;
		FlxG.save.data.lengthIntro = lengthIntro;
		FlxG.save.data.timebarShowSpeed = timebarShowSpeed;
		FlxG.save.data.botWatermark = botWatermark;
		FlxG.save.data.missRating = missRating;
		FlxG.save.data.resultsScreen = resultsScreen;
		FlxG.save.data.compactNumbers = compactNumbers;
		FlxG.save.data.scoreTxtSize = scoreTxtSize;
		FlxG.save.data.noteColorStyle = noteColorStyle;
		FlxG.save.data.enableColorShader = enableColorShader;
		FlxG.save.data.iconBopWhen = iconBopWhen;
		FlxG.save.data.cameraPanning = cameraPanning;
		FlxG.save.data.panIntensity = panIntensity;
		FlxG.save.data.rateNameStuff = rateNameStuff;
		FlxG.save.data.goldSickSFC = goldSickSFC;
		FlxG.save.data.colorRatingHit = colorRatingHit;
		FlxG.save.data.marvRateColor = marvRateColor;
		FlxG.save.data.smoothHealth = smoothHealth;
		FlxG.save.data.smoothHPBug = smoothHPBug;
		FlxG.save.data.noBopLimit = noBopLimit;
		FlxG.save.data.denpaDrainBug = denpaDrainBug;
		FlxG.save.data.ogHPColor = ogHPColor;
		FlxG.save.data.timeBarType = timeBarType;
		FlxG.save.data.scoreStyle = scoreStyle;
		FlxG.save.data.timeBarStyle = timeBarStyle;
		FlxG.save.data.healthBarStyle = healthBarStyle;
		FlxG.save.data.watermarkStyle = watermarkStyle;
		FlxG.save.data.botTxtStyle = botTxtStyle;
		FlxG.save.data.ytWatermarkPosition = ytWatermarkPosition;
		FlxG.save.data.strumLitStyle = strumLitStyle;
		FlxG.save.data.noteStyleThing = noteStyleThing;
		FlxG.save.data.bfIconStyle = bfIconStyle;
		FlxG.save.data.ratingType = ratingType;
		FlxG.save.data.iconBounceType = iconBounceType;
		FlxG.save.data.splashType = splashType;
		FlxG.save.data.longHPBar = longHPBar;
		FlxG.save.data.longFCName = longFCName;
		FlxG.save.data.healthDisplay = healthDisplay;
		FlxG.save.data.opponentRateCount = opponentRateCount;
		FlxG.save.data.wrongCameras = wrongCameras;
		FlxG.save.data.showMS = showMS;
		FlxG.save.data.flashing = flashing;
		FlxG.save.data.camZooms = camZooms;
		FlxG.save.data.ratingCounter = ratingCounter;
		FlxG.save.data.showNotes = showNotes;
		FlxG.save.data.scoreZoom = scoreZoom;
		FlxG.save.data.healthBarAlpha = healthBarAlpha;
		FlxG.save.data.laneUnderlay = laneUnderlay;
		FlxG.save.data.laneUnderlayAlpha = laneUnderlayAlpha;
		FlxG.save.data.showFPS = showFPS;
		FlxG.save.data.randomBotplayText = randomBotplayText;
		FlxG.save.data.botTxtFade = botTxtFade;
		FlxG.save.data.pauseMusic = pauseMusic;
		FlxG.save.data.daMenuMusic = daMenuMusic;
		FlxG.save.data.checkForUpdates = checkForUpdates;
		FlxG.save.data.comboStacking = comboStacking;
		FlxG.save.data.showRamUsage = showRamUsage;
		FlxG.save.data.showMaxRamUsage = showMaxRamUsage;
		FlxG.save.data.debugInfo = debugInfo;
		FlxG.save.data.tipTexts = tipTexts;
		FlxG.save.data.discordRPC = discordRPC;

		//Graphics
		FlxG.save.data.lowQuality = lowQuality;
		FlxG.save.data.globalAntialiasing = globalAntialiasing;
		FlxG.save.data.shaders = shaders;
		FlxG.save.data.cacheOnGPU = cacheOnGPU;
		FlxG.save.data.dynamicSpawnTime = dynamicSpawnTime;
		FlxG.save.data.noteSpawnTime = noteSpawnTime;
		FlxG.save.data.resolution = resolution;
		FlxG.save.data.framerate = framerate;

		//Optimization
		FlxG.save.data.charsAndBG = charsAndBG;
		FlxG.save.data.enableGC = enableGC;
		FlxG.save.data.opponentLightStrum = opponentLightStrum;
		FlxG.save.data.botLightStrum = botLightStrum;
		FlxG.save.data.playerLightStrum = playerLightStrum;
		FlxG.save.data.ratesAndCombo = ratesAndCombo;
		FlxG.save.data.comboPopup = comboPopup;
		FlxG.save.data.songLoading = songLoading;
		FlxG.save.data.noSpawnFunc = noSpawnFunc;
		FlxG.save.data.noHitFuncs = noHitFuncs;
		FlxG.save.data.lessBotLag = lessBotLag;
		FlxG.save.data.fastNoteSpawn = fastNoteSpawn;

		//Secret Debug
		FlxG.save.data.noGunsRNG = noGunsRNG;
		FlxG.save.data.pbRControls = pbRControls;
		FlxG.save.data.rainbowFPS = rainbowFPS;
		
		//Unused
		//FlxG.save.data.cursing = cursing;
		//FlxG.save.data.violence = violence;
		FlxG.save.data.autosaveCharts = autosaveCharts;
		FlxG.save.data.noPausing = noPausing;
		FlxG.save.data.crossFadeData = crossFadeData;

		//Achievements
		FlxG.save.data.achievementsMap = Achievements.achievementsMap;
		FlxG.save.data.henchmenDeath = Achievements.henchmenDeath;
		
		//Gameplay Modifiers
		FlxG.save.data.gameplaySettings = gameplaySettings;

		//Offset and Window stuff
		FlxG.save.data.ratingOffset = ratingOffset;
		FlxG.save.data.perfectWindow = perfectWindow;
		FlxG.save.data.sickWindow = sickWindow;
		FlxG.save.data.goodWindow = goodWindow;
		FlxG.save.data.badWindow = badWindow;
		FlxG.save.data.safeFrames = safeFrames;
		FlxG.save.data.comboOffset = comboOffset;
		FlxG.save.data.noteOffset = noteOffset;

		//RENDERING SETTINGS
		FlxG.save.data.ffmpegMode = ffmpegMode;
		FlxG.save.data.ffmpegInfo = ffmpegInfo;
		FlxG.save.data.targetFPS = targetFPS;
		FlxG.save.data.unlockFPS = unlockFPS;
		FlxG.save.data.renderBitrate = renderBitrate;
		FlxG.save.data.vidEncoder = vidEncoder;
		FlxG.save.data.oldFFmpegMode = oldFFmpegMode;
		FlxG.save.data.lossless = lossless;
		FlxG.save.data.quality = quality;
		FlxG.save.data.renderGCRate = renderGCRate;
		FlxG.save.data.showRemainingTime = showRemainingTime;

		//Note HSV
		FlxG.save.data.arrowHSV = arrowHSV;
		
		//Misc
		FlxG.save.data.JSEngineRecharts = JSEngineRecharts;
		FlxG.save.data.alwaysTriggerCutscene = alwaysTriggerCutscene;
	
		FlxG.save.flush();

		var save:FlxSave = new FlxSave();
		save.bind('controls_v2', CoolUtil.getSavePath()); //Placing this in a separate save so that it can be manually deleted without removing your Score and stuff
		save.data.customControls = keyBinds;
		save.flush();
		FlxG.log.add("Settings saved!");
	}

	public static function loadPrefs() { //loads settings if it finds a save file containing the settings
		#if mobile
		if(FlxG.save.data.screensaver != null) {
			screensaver = FlxG.save.data.screensaver;
		}
		#if android
		if(FlxG.save.data.storageType != null) {
			storageType = FlxG.save.data.storageType;
		}
		#end
		#end
		if(FlxG.save.data.mobileCAlpha != null) {
			mobileCAlpha = FlxG.save.data.mobileCAlpha;
		}
		if(FlxG.save.data.mobileCEx != null) {
			mobileCEx = FlxG.save.data.mobileCEx;
		}
		if(FlxG.save.data.hitboxType != null) {
			hitboxType = FlxG.save.data.hitboxType;
		}
		if(FlxG.save.data.hitboxPos != null) {
			hitboxPos = FlxG.save.data.hitboxPos;
		}
		if(FlxG.save.data.mobileCPlayStateVpad != null) {
			mobileCPlayStateVpad = FlxG.save.data.mobileCPlayStateVpad;
		}
		if(FlxG.save.data.mobileCExTaunt != null) {
			mobileCExTaunt = FlxG.save.data.mobileCExTaunt;
		}
		//Gameplay
		if(FlxG.save.data.controllerMode != null) {
			controllerMode = FlxG.save.data.controllerMode;
		}
		if(FlxG.save.data.downScroll != null) {
			downScroll = FlxG.save.data.downScroll;
		}
		if(FlxG.save.data.middleScroll != null) {
			middleScroll = FlxG.save.data.middleScroll;
		}
		if(FlxG.save.data.opponentStrums != null) {
			opponentStrums = FlxG.save.data.opponentStrums;
		}
		if(FlxG.save.data.healthGainType != null) {
			healthGainType = FlxG.save.data.healthGainType;
		}
		if(FlxG.save.data.ghostTapping != null) {
			ghostTapping = FlxG.save.data.ghostTapping;
		}
		if(FlxG.save.data.autoPause != null) {
			autoPause = FlxG.save.data.autoPause;
		}
		if(FlxG.save.data.complexAccuracy != null) {
			complexAccuracy = FlxG.save.data.complexAccuracy;
		}
		if(FlxG.save.data.startingSync != null) {
			startingSync = FlxG.save.data.startingSync;
		}
		if(FlxG.save.data.resyncType != null) {
			resyncType = FlxG.save.data.resyncType;
		}
		if(FlxG.save.data.noMarvJudge != null) {
			noMarvJudge = FlxG.save.data.noMarvJudge;
		}
		if(FlxG.save.data.noReset != null) {
			noReset = FlxG.save.data.noReset;
		}
		if(FlxG.save.data.antiCheatEnable != null) {
			antiCheatEnable = FlxG.save.data.antiCheatEnable;
		}
		if(FlxG.save.data.instaRestart != null) {
			instaRestart = FlxG.save.data.instaRestart;
		}
		if(FlxG.save.data.ezSpam != null) {
			ezSpam = FlxG.save.data.ezSpam;
		}
		if(FlxG.save.data.shitGivesMiss != null) {
			shitGivesMiss = FlxG.save.data.shitGivesMiss;
		}
		if(FlxG.save.data.ratingIntensity != null) {
			ratingIntensity = FlxG.save.data.ratingIntensity;
		}
		if(FlxG.save.data.spaceVPose != null) {
			spaceVPose = FlxG.save.data.spaceVPose;
		}
		if(FlxG.save.data.ghostTapAnim != null) {
			ghostTapAnim = FlxG.save.data.ghostTapAnim;
		}
		if(FlxG.save.data.missSoundShit != null) {
			missSoundShit = FlxG.save.data.missSoundShit;
		}
		if(FlxG.save.data.hitsoundVolume != null) {
			hitsoundVolume = FlxG.save.data.hitsoundVolume;
		}
		if(FlxG.save.data.hitsoundType != null) {
			hitsoundType = FlxG.save.data.hitsoundType;
		}
		if(FlxG.save.data.voiidTrollMode != null) {
			voiidTrollMode = FlxG.save.data.voiidTrollMode;
		}
		if(FlxG.save.data.trollMaxSpeed != null) {
			trollMaxSpeed = FlxG.save.data.trollMaxSpeed;
		}

		//Visuals & UI
		if(FlxG.save.data.noteSplashes != null) {
			noteSplashes = FlxG.save.data.noteSplashes;
		}
		if(FlxG.save.data.oppNoteSplashes != null) {
			oppNoteSplashes = FlxG.save.data.oppNoteSplashes;
		}
		if(FlxG.save.data.showNPS != null) {
			showNPS = FlxG.save.data.showNPS;
		}
		if(FlxG.save.data.showComboInfo != null) {
			showComboInfo = FlxG.save.data.showComboInfo;
		}
		if(FlxG.save.data.maxSplashLimit != null) {
			maxSplashLimit = FlxG.save.data.maxSplashLimit;
		}
		if(FlxG.save.data.oppNoteAlpha != null) {
			oppNoteAlpha = FlxG.save.data.oppNoteAlpha;
		}
		if(FlxG.save.data.hideHud != null) {
			hideHud = FlxG.save.data.hideHud;
		}
		if(FlxG.save.data.hideScore != null) {
			hideScore = FlxG.save.data.hideScore;
		}
		if(FlxG.save.data.tauntOnGo != null) {
			tauntOnGo = FlxG.save.data.tauntOnGo;
		}
		if(FlxG.save.data.oldSusStyle != null) {
			oldSusStyle = FlxG.save.data.oldSusStyle;
		}
		if(FlxG.save.data.showRendered != null) {
			showRendered = FlxG.save.data.showRendered;
		}
		if(FlxG.save.data.showcaseMode != null) {
			showcaseMode = FlxG.save.data.showcaseMode;
		}
		if(FlxG.save.data.timeBounce != null) {
			timeBounce = FlxG.save.data.timeBounce;
		}
		if(FlxG.save.data.lengthIntro != null) {
			lengthIntro = FlxG.save.data.lengthIntro;
		}
		if(FlxG.save.data.timebarShowSpeed != null) {
			timebarShowSpeed = FlxG.save.data.timebarShowSpeed;
		}
		if(FlxG.save.data.botWatermark != null) {
			botWatermark = FlxG.save.data.botWatermark;
		}
		if(FlxG.save.data.missRating != null) {
			missRating = FlxG.save.data.missRating;
		}
		if(FlxG.save.data.resultsScreen != null) {
			resultsScreen = FlxG.save.data.resultsScreen;
		}
		if(FlxG.save.data.compactNumbers != null) {
			compactNumbers = FlxG.save.data.compactNumbers;
		}
 		if(FlxG.save.data.scoreTxtSize != null) {
			scoreTxtSize = FlxG.save.data.scoreTxtSize;
		}
		if(FlxG.save.data.noteColorStyle != null) {
			noteColorStyle = FlxG.save.data.noteColorStyle;
		}
		if(FlxG.save.data.enableColorShader != null) {
			enableColorShader = FlxG.save.data.enableColorShader;
		}
		if(FlxG.save.data.iconBopWhen != null) {
			iconBopWhen = FlxG.save.data.iconBopWhen;
		}
		if(FlxG.save.data.cameraPanning != null) {
			cameraPanning = FlxG.save.data.cameraPanning;
		}
		if(FlxG.save.data.panIntensity != null) {
			panIntensity = FlxG.save.data.panIntensity;
		}
		if(FlxG.save.data.rateNameStuff != null) {
			rateNameStuff = FlxG.save.data.rateNameStuff;
		}
		if(FlxG.save.data.goldSickSFC != null) {
			goldSickSFC = FlxG.save.data.goldSickSFC;
		}
		if(FlxG.save.data.colorRatingHit != null) {
			colorRatingHit = FlxG.save.data.colorRatingHit;
		}
		if(FlxG.save.data.marvRateColor != null) {
			marvRateColor = FlxG.save.data.marvRateColor;
		}
		if(FlxG.save.data.smoothHealth != null) {
			smoothHealth = FlxG.save.data.smoothHealth;
		}
		if(FlxG.save.data.smoothHPBug != null) {
			smoothHPBug = FlxG.save.data.smoothHPBug;
		}
		if(FlxG.save.data.noBopLimit != null) {
			noBopLimit = FlxG.save.data.noBopLimit;
		}
		if(FlxG.save.data.denpaDrainBug != null) {
			denpaDrainBug = FlxG.save.data.denpaDrainBug;
		}
		if(FlxG.save.data.ogHPColor != null) {
			ogHPColor = FlxG.save.data.ogHPColor;
		}
		if(FlxG.save.data.timeBarType != null) {
			timeBarType = FlxG.save.data.timeBarType;
		}
		if(FlxG.save.data.scoreStyle != null) {
			scoreStyle = FlxG.save.data.scoreStyle;
		}
		if(FlxG.save.data.timeBarStyle != null) {
			timeBarStyle = FlxG.save.data.timeBarStyle;
		}
		if(FlxG.save.data.healthBarStyle != null) {
			healthBarStyle = FlxG.save.data.healthBarStyle;
		}
		if(FlxG.save.data.watermarkStyle != null) {
			watermarkStyle = FlxG.save.data.watermarkStyle;
		}
		if(FlxG.save.data.botTxtStyle != null) {
			botTxtStyle = FlxG.save.data.botTxtStyle;
		}
		if(FlxG.save.data.ytWatermarkPosition != null) {
			ytWatermarkPosition = FlxG.save.data.ytWatermarkPosition;
		}
		if(FlxG.save.data.strumLitStyle != null) {
			strumLitStyle = FlxG.save.data.strumLitStyle;
		}
		if(FlxG.save.data.noteStyleThing != null) {
			noteStyleThing = FlxG.save.data.noteStyleThing;
		}
		if(FlxG.save.data.bfIconStyle != null) {
			bfIconStyle = FlxG.save.data.bfIconStyle;
		}
		if(FlxG.save.data.ratingType != null) {
			ratingType = FlxG.save.data.ratingType;
		}
		if(FlxG.save.data.iconBounceType != null) {
			iconBounceType = FlxG.save.data.iconBounceType;
		}
		if(FlxG.save.data.splashType != null) {
			splashType = FlxG.save.data.splashType;
		}
		if(FlxG.save.data.longHPBar != null) {
			longHPBar = FlxG.save.data.longHPBar;
		}
		if(FlxG.save.data.longFCName != null) {
			longFCName = FlxG.save.data.longFCName;
		}
		if(FlxG.save.data.healthDisplay != null) {
			healthDisplay = FlxG.save.data.healthDisplay;
		}
		if(FlxG.save.data.opponentRateCount != null) {
			opponentRateCount = FlxG.save.data.opponentRateCount;
		}
		if(FlxG.save.data.showMS != null) {
			showMS = FlxG.save.data.showMS;
		}
		if(FlxG.save.data.wrongCameras != null) {
			wrongCameras = FlxG.save.data.wrongCameras;
		}
		if(FlxG.save.data.flashing != null) {
			flashing = FlxG.save.data.flashing;
		}
		if(FlxG.save.data.camZooms != null) {
			camZooms = FlxG.save.data.camZooms;
		}
		if(FlxG.save.data.ratingCounter != null) {
			ratingCounter = FlxG.save.data.ratingCounter;
		}
		if(FlxG.save.data.showNotes != null) {
			showNotes = FlxG.save.data.showNotes;
		}
		if(FlxG.save.data.scoreZoom != null) {
			scoreZoom = FlxG.save.data.scoreZoom;
		}
		if(FlxG.save.data.healthBarAlpha != null) {
			healthBarAlpha = FlxG.save.data.healthBarAlpha;
		}
		if(FlxG.save.data.laneUnderlay != null) {
			laneUnderlay = FlxG.save.data.laneUnderlay;
		}
		if(FlxG.save.data.laneUnderlayAlpha != null) {
			laneUnderlayAlpha = FlxG.save.data.laneUnderlayAlpha;
		}
		if(FlxG.save.data.showFPS != null) {
			showFPS = FlxG.save.data.showFPS;
			if(Main.fpsVar != null) {
				Main.fpsVar.visible = showFPS;
			}
		}
		if(FlxG.save.data.randomBotplayText != null) {
			randomBotplayText = FlxG.save.data.randomBotplayText;
		}
		if(FlxG.save.data.botTxtFade != null) {
			botTxtFade = FlxG.save.data.botTxtFade;
		}
		if(FlxG.save.data.pauseMusic != null) {
			pauseMusic = FlxG.save.data.pauseMusic;
		}
		if(FlxG.save.data.daMenuMusic != null) {
			daMenuMusic = FlxG.save.data.daMenuMusic;
		}
		if (FlxG.save.data.checkForUpdates != null)
		{
			checkForUpdates = FlxG.save.data.checkForUpdates;
		}
		if (FlxG.save.data.comboStacking != null)
			comboStacking = FlxG.save.data.comboStacking;

		if(FlxG.save.data.showRamUsage != null) {
			showRamUsage = FlxG.save.data.showRamUsage;
		}
		if(FlxG.save.data.showMaxRamUsage != null) {
			showMaxRamUsage = FlxG.save.data.showMaxRamUsage;
		}
		if(FlxG.save.data.debugInfo != null) {
			debugInfo = FlxG.save.data.debugInfo;
		}
		if(FlxG.save.data.tipTexts != null) {
			tipTexts = FlxG.save.data.tipTexts;
		}
		if(FlxG.save.data.discordRPC != null) {
			discordRPC = FlxG.save.data.discordRPC;
		}

		//Graphics
		if(FlxG.save.data.lowQuality != null) {
			lowQuality = FlxG.save.data.lowQuality;
		}
		if(FlxG.save.data.globalAntialiasing != null) {
			globalAntialiasing = FlxG.save.data.globalAntialiasing;
		}
		if(FlxG.save.data.shaders != null) {
			shaders = FlxG.save.data.shaders;
		}
		if(FlxG.save.data.cacheOnGPU != null) {
			cacheOnGPU = FlxG.save.data.cacheOnGPU;
		}
		if(FlxG.save.data.dynamicSpawnTime != null) {
			dynamicSpawnTime = FlxG.save.data.dynamicSpawnTime;
		}
		if(FlxG.save.data.noteSpawnTime != null) {
			noteSpawnTime = FlxG.save.data.noteSpawnTime;
		}
		if (FlxG.save.data.resolution != null) {
			#if desktop
			resolution = FlxG.save.data.resolution;
    			var resolutionValue = cast(ClientPrefs.resolution, String);

    			if (resolutionValue != null) {
        			var parts = resolutionValue.split('x');
        
        			if (parts.length == 2) {
            				var width = Std.parseInt(parts[0]);
            				var height = Std.parseInt(parts[1]);
            	
            				if (width != null && height != null) {
						CoolUtil.resetResScale(width, height);
                				FlxG.resizeGame(width, height);
						lime.app.Application.current.window.width = width;
						lime.app.Application.current.window.height = height;
            				}
        			}
    			}
			#end
		}
		if(FlxG.save.data.framerate != null) {
			framerate = FlxG.save.data.framerate;
			if(framerate > FlxG.drawFramerate) {
				FlxG.updateFramerate = framerate;
				FlxG.drawFramerate = framerate;
			} else {
				FlxG.drawFramerate = framerate;
				FlxG.updateFramerate = framerate;
			}
		}

		//Optimization
		if(FlxG.save.data.charsAndBG != null) {
			charsAndBG = FlxG.save.data.charsAndBG;
		}
		if(FlxG.save.data.enableGC != null) {
			enableGC = FlxG.save.data.enableGC;
		}
		if(FlxG.save.data.opponentLightStrum != null) {
			opponentLightStrum = FlxG.save.data.opponentLightStrum;
		}
		if(FlxG.save.data.botLightStrum != null) {
			botLightStrum = FlxG.save.data.botLightStrum;
		}
		if(FlxG.save.data.playerLightStrum != null) {
			playerLightStrum = FlxG.save.data.playerLightStrum;
		}
		if(FlxG.save.data.ratesAndCombo != null) {
			ratesAndCombo = FlxG.save.data.ratesAndCombo;
		}
		if(FlxG.save.data.comboPopup != null) {
			comboPopup = FlxG.save.data.comboPopup;
		}
		if(FlxG.save.data.songLoading != null) {
			songLoading = FlxG.save.data.songLoading;
		}
		if(FlxG.save.data.noSpawnFunc != null) {
			noSpawnFunc = FlxG.save.data.noSpawnFunc;
		}
		if(FlxG.save.data.noHitFuncs != null) {
			noHitFuncs = FlxG.save.data.noHitFuncs;
		}
		if(FlxG.save.data.lessBotLag != null) {
			lessBotLag = FlxG.save.data.lessBotLag;
		}
		if(FlxG.save.data.fastNoteSpawn != null) {
			fastNoteSpawn = FlxG.save.data.fastNoteSpawn;
		}

		//Secret Debug
		if(FlxG.save.data.noGunsRNG != null) {
			noGunsRNG = FlxG.save.data.noGunsRNG;
		}
		if(FlxG.save.data.pbRControls != null) {
			pbRControls = FlxG.save.data.pbRControls;
		}
		if(FlxG.save.data.rainbowFPS != null) {
			rainbowFPS = FlxG.save.data.rainbowFPS;
		}

		//Unused
		/*if(FlxG.save.data.cursing != null) {
			cursing = FlxG.save.data.cursing;
		}
		if(FlxG.save.data.violence != null) {
			violence = FlxG.save.data.violence;
		}*/
		if(FlxG.save.data.crossFadeData != null) {
			crossFadeData = FlxG.save.data.crossFadeData;
		}
		
		//Offset and Window stuff
		if(FlxG.save.data.ratingOffset != null) {
			ratingOffset = FlxG.save.data.ratingOffset;
		}
		if(FlxG.save.data.marvWindow != null) {
			perfectWindow = FlxG.save.data.perfectWindow;
		}
		if(FlxG.save.data.perfectWindow != null) {
			perfectWindow = FlxG.save.data.perfectWindow;
		}
		if(FlxG.save.data.sickWindow != null) {
			sickWindow = FlxG.save.data.sickWindow;
		}
		if(FlxG.save.data.goodWindow != null) {
			goodWindow = FlxG.save.data.goodWindow;
		}
		if(FlxG.save.data.badWindow != null) {
			badWindow = FlxG.save.data.badWindow;
		}
		if(FlxG.save.data.safeFrames != null) {
			safeFrames = FlxG.save.data.safeFrames;
		}
		if(FlxG.save.data.comboOffset != null) {
			comboOffset = FlxG.save.data.comboOffset;
		}
		if(FlxG.save.data.noteOffset != null) {
			noteOffset = FlxG.save.data.noteOffset;
		}

		//Note HSV
		if(FlxG.save.data.arrowHSV != null) {
			arrowHSV = FlxG.save.data.arrowHSV;
		}

		if(FlxG.save.data.gameplaySettings != null)
		{
			var savedMap:Map<String, Dynamic> = FlxG.save.data.gameplaySettings;
			for (name => value in savedMap)
			{
				gameplaySettings.set(name, value);
			}
		}
		
		// flixel automatically saves your volume!
		if(FlxG.save.data.volume != null)
		{
			FlxG.sound.volume = FlxG.save.data.volume;
		}
		if (FlxG.save.data.mute != null)
		{
			FlxG.sound.muted = FlxG.save.data.mute;
		}

		//Game Renderer
		if(FlxG.save.data.ffmpegMode != null) {
			ffmpegMode = FlxG.save.data.ffmpegMode;
		}
		if(FlxG.save.data.ffmpegInfo != null) {
			ffmpegInfo = FlxG.save.data.ffmpegInfo;
		}
		if(FlxG.save.data.targetFPS != null) {
			targetFPS = FlxG.save.data.targetFPS;
		}
		if(FlxG.save.data.unlockFPS != null) {
			unlockFPS = FlxG.save.data.unlockFPS;
		}
		if(FlxG.save.data.renderBitrate != null) {
			renderBitrate = FlxG.save.data.renderBitrate;
		}
		if(FlxG.save.data.vidEncoder != null) {
			vidEncoder = FlxG.save.data.vidEncoder;
		}
		if(FlxG.save.data.oldFFmpegMode != null) {
			oldFFmpegMode = FlxG.save.data.oldFFmpegMode;
		}
		if(FlxG.save.data.lossless != null) {
			lossless = FlxG.save.data.lossless;
		}
		if(FlxG.save.data.quality != null) {
			quality = FlxG.save.data.quality;
		}
		if(FlxG.save.data.renderGCRate != null) {
			renderGCRate = FlxG.save.data.renderGCRate;
		}
		if(FlxG.save.data.showRemainingTime != null) {
			showRemainingTime = FlxG.save.data.showRemainingTime;
		}

		//Misc Settings
		if(FlxG.save.data.JSEngineRecharts != null) {
			JSEngineRecharts = FlxG.save.data.JSEngineRecharts;
		}
		if(FlxG.save.data.alwaysTriggerCutscene != null) {
			alwaysTriggerCutscene = FlxG.save.data.alwaysTriggerCutscene;
		}

		var save:FlxSave = new FlxSave();
		save.bind('controls_v2', CoolUtil.getSavePath());
		if(save != null && save.data.customControls != null) {
			var loadedControls:Map<String, Array<FlxKey>> = save.data.customControls;
			for (control => keys in loadedControls) {
				keyBinds.set(control, keys);
			}
			reloadControls();
		}
	}

	inline public static function getGameplaySetting(name:String, defaultValue:Dynamic):Dynamic {
		return /*PlayState.isStoryMode ? defaultValue : */ (gameplaySettings.exists(name) ? gameplaySettings.get(name) : defaultValue);
	}

	public static function reloadControls() {
		PlayerSettings.player1.controls.setKeyboardScheme(KeyboardScheme.Solo);

		TitleState.muteKeys = copyKey(keyBinds.get('volume_mute'));
		TitleState.volumeDownKeys = copyKey(keyBinds.get('volume_down'));
		TitleState.volumeUpKeys = copyKey(keyBinds.get('volume_up'));
		FlxG.sound.muteKeys = TitleState.muteKeys;
		FlxG.sound.volumeDownKeys = TitleState.volumeDownKeys;
		FlxG.sound.volumeUpKeys = TitleState.volumeUpKeys;
	}
	public static function copyKey(arrayToCopy:Array<FlxKey>):Array<FlxKey> {
		var copiedArray:Array<FlxKey> = arrayToCopy.copy();
		var i:Int = 0;
		var len:Int = copiedArray.length;

		while (i < len) {
			if(copiedArray[i] == NONE) {
				copiedArray.remove(NONE);
				--i;
			}
			i++;
			len = copiedArray.length;
		}
		return copiedArray;
	}
}
