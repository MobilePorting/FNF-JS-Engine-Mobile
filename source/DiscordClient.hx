package;

#if DISCORD_ALLOWED
import cpp.ConstCharStar;
import cpp.ConstPointer;
import cpp.Function;
import cpp.RawConstPointer;
import cpp.RawPointer;
import cpp.Star;

import sys.thread.Thread;

import hxdiscord_rpc.Discord;
import hxdiscord_rpc.Types;

#if LUA_ALLOWED
    import llua.Lua;
    import llua.State;
#end

class DiscordClient
{
    public static var initialized(default, null):Bool;

    public static final defaultID:String = "1192736165472784445";

    public static var applicationID(default, set):String = defaultID;

    public static function initialize():Void
    {
        if (initialized)
            return;

        var handlers:DiscordEventHandlers = DiscordEventHandlers.create();

        handlers.ready = Function.fromStaticFunction(onReady);

		handlers.disconnected = Function.fromStaticFunction(onDisconnected);

		handlers.errored = Function.fromStaticFunction(onError);

        Discord.Initialize(applicationID, RawPointer.addressOf(handlers), 1, null);

        Thread.create(function()
        {
            while (true)
            {
                #if DISCORD_DISABLE_IO_THREAD
                    Discord.UpdateConnection();
                #end

                Discord.RunCallbacks();

                Sys.sleep(0.5); // Wait 0.5 seconds until the next loop...
            }
        });

        initialized = true;
    }

    public static function close():Void
    {
        if (!initialized)
            return;

        Discord.Shutdown();

        initialized = false;
    }

    public static function changePresence(details:String, state:Null<String>, ?smallImageKey:String, ?hasStartTimestamp:Bool, ?endTimestamp: Float)
    {
        var startTimestamp:Float = if (hasStartTimestamp) Date.now().getTime() else 0;

        if (endTimestamp > 0)
            endTimestamp = startTimestamp + endTimestamp;

        var discordPresence:DiscordRichPresence = DiscordRichPresence.create();

		discordPresence.state = state;
        
		discordPresence.details = details;

		discordPresence.largeImageKey = "icon";

		discordPresence.smallImageKey = smallImageKey;

        discordPresence.startTimestamp = Std.int(startTimestamp / 1000);

        discordPresence.endTimestamp = Std.int(endTimestamp / 1000);

        discordPresence.largeImageText = "Engine Version: " + MainMenuState.psychEngineJSVersion;

		Discord.UpdatePresence(RawConstPointer.addressOf(discordPresence));
    }

	static function onReady(request:RawConstPointer<DiscordUser>):Void
	{
		var requestPtr:Star<DiscordUser> = ConstPointer.fromRaw(request).ptr;

		if (Std.parseInt(cast(requestPtr.discriminator, String)) != 0)
			Sys.println('(DiscordClient) Connected to User (${cast(requestPtr.username, String)}#${cast(requestPtr.discriminator, String)})');
		else
			Sys.println('(DiscordClient) Connected to User (${cast(requestPtr.username, String)})');
	}

	private static function onDisconnected(errorCode:Int, message:ConstCharStar):Void
	{
		Sys.println('DiscordClient: Disconnected ($errorCode: ${cast(message, String)})');
	}

	private static function onError(errorCode:Int, message:ConstCharStar):Void
	{
		Sys.println('DiscordClient: Error ($errorCode: ${cast(message, String)})');
	}

    #if LUA_ALLOWED
        public static function addLuaCallbacks(lua:State)
        {
            Lua_helper.add_callback(lua, "changePresence", function(details:String, state:Null<String>, ?smallImageKey:String, ?hasStartTimestamp:Bool, ?endTimestamp:Float) {
                changePresence(details, state, smallImageKey, hasStartTimestamp, endTimestamp);
            });
        }
	#end

    @:noCompletion
    static function set_applicationID(value:String):String
    {
        applicationID = value;

        close();

        if (ClientPrefs.discordRPC) initialize();

        return value;
    }
}
#end