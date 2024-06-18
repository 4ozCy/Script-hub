--[[
	           ,."""""""""""""".,
	        .d"                  "b.
	      .d                        b.
	    ."         .. depso ..        ".
	   P        z$*"        "*e.        9.
	  A       d"                "b       A
	 J       J    .e*""""""%c     A       L
	A       A    d"          $     L      A
	#       %   d      d**y  'L    %      #
	#       %   $     $ ,, Y  .$   %      #       _ _ 
	#       %   $     *  """   F   %      #      (@)@)
	#       V    4.    $.   .e"    Y      #        % %
	#        $    *.    """"     .Y      V         $ $
	#        'b     "b.      ..e*       Y         .eeee
	V         '$      ""eeee""        eP         A     %
	 Y         eb                ..d*"         _#    O %
	 I    _e%*""""*$ee......ee$*"eeeeeeeezee$**"       $
	  V ,"                                            B
	  J'                                        _,e=""
	.'#######################################DWB''
	Made by Depso - mastersmzscripts.com
	The SNAIL Script V2 (LIMBS VERSION FOR TROLLING)

	To update the config, run the script again.
]]

_G.Snail_Config = {
	Speed = 0.4,
	TunnelSpeed = 1,

	--// Offsets
	Offset = CFrame.new(0,3,0),
	TunnelOffset = CFrame.new(0,-6,0), -- This is added to the Offset

	--// Control
	Teleport = Enum.KeyCode.E,
	Tunnel = Enum.KeyCode.Q,
	ResetCamera = Enum.KeyCode.R,

	TunnelIsToggle = true,
	DistanceChangesSpeed = true,
	UseCameraRotaton = false, -- Old movement
	Distance = 5,

	--// Animations
	Enabled = true, -- If disabled, the script will not run after death
	Sounds = true,

	--// Sounds
	Audios = {
		Teleport = {
			SoundId = 507863457
		}
	},

	--// Misc (Advanced)
	Max_Height = 15,
	Root_Height = 4,
}

------------------------------

if _G.Snail_Ran then return end
loadstring(game:HttpGet('https://raw.githubusercontent.com/MastersMZ-Scripts/Scripts/main/Snail%20Script/Snail%20Limbs%20Version.lua'))()
