if (Photon2.ReloadVehicleFile()) then return end
local VEHICLE = Photon2.LibraryVehicle()

-- The readable title of your vehicle
VEHICLE.Title 		= "f150 utility"
-- The vehicle from which yours is based upon
VEHICLE.Vehicle		= "smfordresponder"
-- The vehicle's spawn category
VEHICLE.Category 	= "Photon 2: alberta wildfire service"
-- Your name
VEHICLE.Author		= "Me"

local sequence = Photon2.SequenceBuilder.New

VEHICLE.BodyGroups = {
	["Wheels"] = 3,
   ["Bed"] = 3,
	["Grille"] = 0,
	["Front Bumper"] = 0,
	["Rear Bumper"] = 0,
	["Mirrors"] = 0,
	["Rear Seats"] = 0,
	["Partition"] = 1,
	["Center Console"] = 0,
	["Towbar"] = 0,
	["Responder Badge"] = 0,
	["Pushbar"] = 0,
}

VEHICLE.Schema = {
    ["Emergency.Warning"] = {
        { Label = "PRIMARY" },
        { Mode = "MODE1", Label = "scene" },
        { Mode = "MODE3", Label = "response" },
    }
}

VEHICLE.Equipment = {
    {
        Category = "Lights",
        -- Options are different choices within the Lightbar category. We're starting off 
        -- with just a single option.
        Options = {
           {
              -- This is simply the text that players see. It can say whatever you like.
              Option = "legend",
              Components = {
                 {
                   
               Component = "photon_fedsig_legend",
             Position = Vector( 0, -47.5, 95 ),
                    Angles = Angle( 0, 90, 0 ),
               Scale = 1.04,
               Segments = {
						 Light = {
							 FrameDuration = 1/20,
							 Frames = {
								 [1] = "[R] 5 7 9 11 16 18 20 [A] 22 24 26 3" ,
								 [2] = "[R] 6 8 10 12 15 17 19 [A] 21 23 25 4",
								 [3] = "[R] 7 8 [A] 18 17 16 15 ",
								 [4] = "[A] 22 24 26 3",
								 [5] = "[A] 21 23 25 4 ",
							 },
							 Sequences = {
								 ["RED"] = sequence():SetTiming(1/25):FlashHold(1, 3, 5):FlashHold(2, 3, 5),
								 ["AMB"] = sequence():SetTiming(1/20):FlashHold(4, 2, 6):FlashHold(5, 2, 6),
								 ["AMBS"] = {}
							 }
						 },
                    Tdkn = {
							 FrameDuration = 1/20,
							 Frames = {
								 [1] = "[W] 1 14" ,
								 [2] = "[W] 2 13",
							 },
							 Sequences = {
								 ["RED"] = sequence():SetTiming(1/25):FlashHold(1, 2, 2):FlashHold(2, 2, 2),
							 }
						 },
						TA = {
						 FrameDuration = 1/4,
						 Frames = {
							 [1] = "[A] 26 25 ",
							 [2] = "[A] 24 23",
							 [3] = "[A] 22 21",
							 [4] = "[A] 22 21",
							 [5] = "[A] 21",
							 [6] = "[A] 23",
							 [7] = "[A] 25",
							 [8] = "[A] 26",
							 [9] = "[A] 24",
							 [10] = "[A] 22",
							 
						 },
						 Sequences = {
							 ["right"] = {5,6,7,8,9,10,0,10,0,10,0,10,0},
							 ["left"] = {10,9,8,7,6,5,0,5,0,5,0,5,0},
							 ["cenout"] = {1,2,3,4,0,4,0,4,0,4,0},
						 }
					 },
					},
				   InputActions = {
					   ["Emergency.Warning"] = {
						   ["MODE1"] = { Light = "AMB", },
						   ["MODE3"] = { Light = "RED", Tdkn = "RED"},
					   },
					   ["Emergency.Directional"] = {
						 ["LEFT"] = { TA = "left" },
						 ["RIGHT"] = { TA = "right" },
						 ["CENOUT"] = { TA = "cenout" },
					 },
					   ["Emergency.Marker"]  = {
						["ON"] = { Light = "AMBS",},
					},
					
				   },
					Bones = {
							["foot_right"] = { Vector(0, 0, 0), Angle(2, 0, 0), 1},
							["foot_left"] = { Vector(-0, 0, 0), Angle(-5, 0, -1), 1 },
						},
					BodyGroups = {
									 ["feet"] = 2,
						},
					SubMaterials = {
							--adjust this one to adjust the skin
							[5] = "schmal/photon/fedsig_legend/lens",
							[6] = "schmal/photon/fedsig_legend/lens",
						},
                    
                 },
                 
              }
           },
           
        },
      },
       {
        Category = "ext",
        -- Options are different choices within the Lightbar category. We're starting off 
        -- with just a single option.
        Options = {
           {
              -- This is simply the text that players see. It can say whatever you like.
              Option = "1",
              Components = {
                 {
                   
                  Component = "anemolis_fedsig_impx3",
                  Position = Vector( -12, 133.58, 52.),
                  Angles = Angle( 00, 0, 02 ),
                  Scale = 1,
                    Segments = {
                        Light = {
                            Frames = {
                                [1] = "[R] 1 ",
                                [2] = "[A] 1",

                                
                            },
                            Sequences = {
                                ["CODE3"] = sequence():SetTiming(1/22):FlashHold(1, 2, 4):FlashHold(0, 2, 4),
                                ["PARK"] = sequence():SetTiming(1/22):FlashHold(0, 2, 4):FlashHold(2, 2, 4),
                                 }
                             },
                         },
                         InputActions = {
                             ["Emergency.Warning"] = {
                                 ["MODE1"] = { Light = "PARK", },
                                 ["MODE3"] = { Light = "CODE3",  },
                             },
                         },
                    
                 },
				  {
                   
                    Component = "anemolis_fedsig_impx3",
                    Position = Vector( 12, 133.58, 52.),
                     Angles = Angle( 00, 0, 02 ),
                    Scale = 1,
                    Segments = {
                        Light = {
                            Frames = {
                                [1] = "[R] 1 ",
                                [2] = "[A] 1",

                                
                            },
                            Sequences = {
                                ["CODE3"] = sequence():SetTiming(1/22):FlashHold(0, 2, 4):FlashHold(1, 2, 4),
                                ["PARK"] = sequence():SetTiming(1/22):FlashHold(2, 2, 4):FlashHold(0, 2, 4),
                                 }
                             },
                         },
                         InputActions = {
                             ["Emergency.Warning"] = {
                                 ["MODE1"] = { Light = "PARK",},
                                 ["MODE3"] = { Light = "CODE3",  },
                             },
                         },

                    
                 },
                 
              }
           },
           
        },
      },
       {
		Category = "props",
		Options = {
			{
				Option = "Skid Unit",
				Props = {
					{
						Model = "models/anemolis/props/f150_brushguard/anemolis_f150_brushguard.mdl",
						Position = Vector( 0, 130, 42 ),
						Angles = Angle( 0, 0, 0 ),
						Scale = 1,
					},
                {
				  Model = "models/supermighty/props/backrack_lightbarmount.mdl",
				  Position = Vector( -18, -47.7, 91.75),
				  Angles = Angle( 0, 90, 0 ),
				  Scale = 1.02
			  },
			  {
				Model = "models/supermighty/props/backrack_lightbarmount.mdl",
                Position = Vector( 18, -47.7, 91.75),
                Angles = Angle( 0, 90, 0 ),
				Scale = 1.02
			},
         
				}
			}
		}
	},
     {
		Category = "equipment",
		Options = {
         {
				Option = "potable water",
				Props = {
					{
						Model = "models/samm/watertank/watertank.mdl",
						Position = Vector( 0, -87.5, 41.9 ),
						Angles = Angle( 0, 0, -1.2 ),
						Scale = 1.07,
					},
         
				}
			},
         {
				Option = "non potable water",
				Props = {
					{
						Model = "models/samm/watertank/watertank.mdl",
						Position = Vector( 0, -87.5, 41.9 ),
						Angles = Angle( 0, 0, -1.2 ),
						Scale = 1.07,
					},
         
				}
			},
			 {
				Option = "fuel",
				Props = {
					{
						Model = "models/samm/watertank/watertank.mdl",
						Position = Vector( 0, -87.5, 41.9 ),
						Angles = Angle( 0, 0, -1.2 ),
						Scale = 1.07,
						Color = Color( 140, 10, 10 ),
						SubMaterials = {
							--adjust this one to adjust the skin
							[0] = "phoenix_storms/fender_white",
						},
					},
         
				}
			},
         {
				Option = "traffic",
				Props = {
					{
						Model = "models/w4nou/cone.mdl",
						Position = Vector( 30, -109, 43.1 ),
						Angles = Angle( 0, 20, 0),
						Scale = 1,
					},
					{
						Model = "models/w4nou/cone.mdl",
						Position = Vector( 30, -109, 43.1+1 ),
						Angles = Angle( 0, 0, 0),
						Scale = 1,
					},
					{
						Model = "models/w4nou/cone.mdl",
						Position = Vector( 30, -109, 43.1+1+1),
						Angles = Angle( 0, 50, 0 ),
						Scale = 1,
					},
					{
						Model = "models/w4nou/cone.mdl",
						Position = Vector( 10, -109, 43.1 ),
						Angles = Angle( 0, 10, 0),
						Scale = 1,
					},
					{
						Model = "models/w4nou/cone.mdl",
						Position = Vector( 10, -109, 43.1+1 ),
						Angles = Angle( 0, 80, 0),
						Scale = 1,
					},
					{
						Model = "models/w4nou/cone.mdl",
						Position = Vector( 10, -109, 43.1+1+1),
						Angles = Angle( 0,30, 0 ),
						Scale = 1,
					},
					{
						Model = "models/construction_barrier02b.mdl",
						Position = Vector( 0, -62, 42.),
						Angles = Angle( 01,90, 0 ),
						Scale = 0.6,
					},
					{
						Model = "models/construction_barrier02b.mdl",
						Position = Vector( 0, -62-27, 42.),
						Angles = Angle( 01,90, 0 ),
						Scale = 0.6,
					},
					{
						Model = "models/construction_barrier02b.mdl",
						Position = Vector( 0, -62, 42.),
						Angles = Angle( 01,90, 0 ),
						Scale = 0.6,
					},
					{
						Model = "models/construction_barrier01b.mdl",
						Position = Vector( -20, -62-27-23, 42.),
						Angles = Angle( 01,90, 0 ),
						Scale = 0.6,
					},
         
				}
			},
			{
				Option = "crates",
				Props = {
					{
						Model = "models/jarheads/props/shipping_crate_1.mdl",
						Position = Vector( 0, -70, 42.),
						Angles = Angle( 01,90, 0 ),
						Scale = 1,
					},
					{
						Model = "models/jarheads/props/shipping_crate_4.mdl",
						Position = Vector( 0, -70-30, 62),
						Angles = Angle( 91,90, 0 ),
						Scale = 1,
					},
					{
						Model = "models/jarheads/props/shipping_crate_3.mdl",
						Position = Vector( 0, -70-10-40, 63),
						Angles = Angle( 91,90, 0 ),
						Scale = 1,
					},
         
				}
			},
         {
				Option = "cases",
				Props = {
					{
						Model = "models/kali/props/cases/hard case a.mdl",
					Position = Vector( 0, -70, 42.5),
						Angles = Angle( 01,90, 0 ),
						Scale = 1,
						SubMaterials = {
							--adjust this one to adjust the skin
							[0] = "models/kali/props/cases/hardcase/hardcase_a_black",
						},
					},
					{
						Model = "models/kali/props/cases/hard case c.mdl",
					Position = Vector( 0, -70-34, 42.5),
						Angles = Angle( 0,90, 0 ),
						Scale = 1,
						SubMaterials = {
							--adjust this one to adjust the skin
							[0] = "models/kali/props/cases/hardcase/hardcase_c_black",
						},
					},
         
				}
			},
         {
				Option = "weather baloon gear",
				Props = {
					{
						Model = "models/anemolis/props/f150_brushguard/anemolis_f150_brushguard.mdl",
						Position = Vector( 0, 130, 42 ),
						Angles = Angle( 0, 0, 0 ),
						Scale = 1,
					},
         
				}
			},
		}
	},
}