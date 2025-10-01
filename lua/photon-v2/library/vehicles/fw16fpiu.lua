if (Photon2.ReloadVehicleFile()) then return end
local VEHICLE = Photon2.LibraryVehicle()

VEHICLE.Title 		= "16 fpiu"

VEHICLE.Vehicle		= "sm16fpiu"

VEHICLE.Category 	= "Photon 2: alberta fish and wildlife"

VEHICLE.Author		= "k9, datedgore44, goodmansamm"

local sequence = Photon2.SequenceBuilder.New

VEHICLE.Equipment = {
    {
        Category = "lightbar",
        
        Options = {
             
			
           {
              Option = "legacy 54",
              Components = {
                 {
                   
                    Component = "photon_fedsig_legend",
                    Position = Vector( 0, -10., 86.8 ),
                    Angles = Angle( 01.5, 90, 0 ),
               		Scale = 1.05,
                  	BodyGroups = {
									 ["feet"] = 2,
						},
					SubMaterials = {
							[5] = "schmal/photon/fedsig_legend/lens",
							[6] = "schmal/photon/fedsig_legend/lens",
						},
						
						   Segments = {
						 Light = {
							 FrameDuration = 1/9,
							 Frames = {
								 [1] = "[R] 5 7 9 11 15 17 19 21 [B] 6 8 10 12 16 18 20 22" ,
								 [2] = "[R] 3 23 [B] 4  24",
								 [3] = "[R] 5 7 9 11 15 17 19 21 3 23 25 [B] 6 8 10 12 16 18 20 22 4 24 26",
								 [4] = "[A] 22 24 26 3",
								 [5] = "[A] 21 23 25 4 ",
							 },
							 Sequences = {
								["ON"] = {1,0,1,2,1,0,1,3,0}
							 }
						 },
                    Tdkn = {
							 FrameDuration = 1/20,
							 Frames = {
								 [1] = "[W] 1 14" ,
								 [2] = "[W] 2 13",
							 },
							 Sequences = {
								 ["ON"] = sequence():SetTiming(1/20):FlashHold(1, 2, 3):FlashHold(2, 2, 3),
							 }
						 },
					},
				   InputActions = {
					   ["Emergency.Warning"] = {
						   ["MODE1"] = { },
						   ["MODE2"] = { },
						   ["MODE3"] = { Light = "ON", Tdkn = "ON"},
					   },
					
				   },
					Bones = {
							["foot_right"] = { Vector(0, 0, 0), Angle(6, 0, 0), 1},
							["foot_left"] = { Vector(0, 0, 0), Angle(-6, 0, 0), 1 },
						},
					BodyGroups = {
									 ["feet"] = 1,
						},
					SubMaterials = {
							--adjust this one to adjust the skin
							[5] = "schmal/photon/fedsig_legend/lens",
							[6] = "schmal/photon/fedsig_legend/lens",
						},
                    
                 },
              },
           },
        
		}
	},
}