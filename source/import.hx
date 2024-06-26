#if !macro
import Paths;
import haxe.ds.Vector as HaxeVector; //apparently denpa uses vectors, which is required for camera panning i guess

import mobile.SUtil;

#if sys
import sys.*;
import sys.io.*;
#elseif js
import js.html.*;
#end

#if flxanimate
import flxanimate.*;
#end

//so that it doesn't bring up a "Type not found: Countdown"
import BaseStage.Countdown;

//Flixel
import flixel.sound.FlxSound;
import flixel.FlxG;
import flixel.FlxSprite;
import flixel.FlxCamera;
import flixel.math.FlxMath;
import flixel.math.FlxPoint;
import flixel.util.FlxColor;
import flixel.util.FlxTimer;
import flixel.text.FlxText;
import flixel.tweens.FlxEase;
import flixel.tweens.FlxTween;
import flixel.math.FlxRect;
import flixel.group.FlxSpriteGroup;
import flixel.group.FlxGroup.FlxTypedGroup;
import flixel.util.FlxDestroyUtil;
#end