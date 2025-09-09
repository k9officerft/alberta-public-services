if (Photon2.ReloadVehicleFile()) then return end
local VEHICLE = Photon2.LibraryVehicle()

-- The readable title of your vehicle
VEHICLE.Title 		= "f450 pump"
-- The vehicle from which yours is based upon
VEHICLE.Vehicle		= "f550_crew_sgm"
-- The vehicle's spawn category
VEHICLE.Category 	= "Photon 2: alberta wildfire service"
-- Your name
VEHICLE.Author		= "Me"

local sequence = Photon2.SequenceBuilder.New

VEHICLE.SubMaterials = {
	[3] = "anemolis_shared/trans", --glass
	[13] = "anemolis_shared/trans", --skin0
	[17] = "anemolis_shared/trans", --crew
	[18] = "anemolis_shared/trans", --crew bottom
	[19] = "anemolis_shared/trans", --crew lights
	[20] = "anemolis_shared/trans", --crew int
}

VEHICLE.Schema = {
    ["Emergency.Warning"] = {
        { Label = "PRIMARY" },
        { Mode = "MODE1", Label = "scene" },
        { Mode = "MODE3", Label = "response" },
    }
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
        Category = "Lightbar",
        -- Options are different choices within the Lightbar category. We're starting off 
        -- with just a single option.
        Options = {
           {
              -- This is simply the text that players see. It can say whatever you like.
              Option = "1",
              Components = {
                 {
                   
                    Component = "photon_fedsig_legend",
                    Position = Vector( 0, 43, 89. ),
                    Angles = Angle( 0, 90, 0 ),
                    Scale = .9,
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
							["foot_left"] = { Vector(-0, 0, 0), Angle(-2, 0, 0), 1 },
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
                 
              }
           },
		    {
              -- This is simply the text that players see. It can say whatever you like.
              Option = "2",
              Components = {
                 {
                   
                    Component = "photon_fedsig_legend",
                    Position = Vector( 0, 43, 89. ),
                    Angles = Angle( 0, 90, 0 ),
                    Scale = .9,
					Bones = {
							["foot_right"] = { Vector(0, 0, 0), Angle(2, 0, 0), 1},
							["foot_left"] = { Vector(-0, 0, 0), Angle(-2, 0, 0), 1 },
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
                  	Position = Vector( 16.1, 152, 50.5 ),
                    Angles = Angle( 0, 0, 0 ),
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
                  		Position = Vector( -16.1, 152, 50.5 ),
                    Angles = Angle( 0, 0, 0 ),
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
		Category = "Firetruck",
		Options = {
			{
				Props = {
					{
						Model = "models/anemolis_vehicles/f550_mini_pumper/mini_pumper.mdl",
						Position = Vector( 0, 0, -3 ),
						Angles = Angle( 0, 0, 0 ),
						Scale = 1,
						SubMaterials = {
							--adjust this one to adjust the skin
							[0] = "models/supermighty/shared/skin",
							[8] = "models/supermighty/shared/skin",
                     [13] = "anemolis_shared/trans",
                     [14] = "anemolis_shared/trans",
                     [15] = "anemolis_shared/trans",
						},
					},
					{
						Model = "models/anemolis_vehicles/f550_mini_pumper/mini_pumper_panel.mdl",
						Position = Vector( 0, 0, -3 ),
						Angles = Angle( 0, 0, 0 ),
						Scale = 1,
					},
				},
			}
		}
	},
	{
		Category = "Standard Lighting",
		Options = {
			{
				Components = {
					{
						Component = "photon_standard_f550_mini_pumper",
						Position = Vector( 0, 0, 0 ),
						Angles = Angle( 0, 0, 0 ),
						Scale = 1,
					},
				},
			}
		}
	},
	{
		Category = "Rear Lighting (Brake, Turn, Reverse)",
		Options = {
			{
				Components = {
					--left
					{
						Component = "creeper_whelen_600_btt",
						Position = Vector( -51.5+7, -130.23, 38 ),
						Angles = Angle( -45, 180, 0 ),
						Scale = 1,
						Phase = "ARROW_SLOW",
						BodyGroups = {
							["flange"] = 2,
						}
					},
					{
						Component = "creeper_whelen_600_btt",
						Position = Vector( -51.5, -130.23, 38 ),
						Angles = Angle( -45, 180, 0 ),
						Scale = 1,

						BodyGroups = {
							["flange"] = 2,
						}
					},
					{
						Component = "creeper_whelen_600_rev",
						Position = Vector( -51.5+7+7, -130.23, 38 ),
						Angles = Angle( -45, 180, 0 ),
						Scale = 1,
						BodyGroups = {
							["flange"] = 2,
						}
					},
					--right
					{
						Component = "creeper_whelen_700_btt",
						Position = Vector( 50.5, -130.23, 34+6 ),
						Angles = Angle( 0, 180, 0 ),
						Scale = 1,
						Phase = "ARROW_SLOW",
						BodyGroups = {
							["flange"] = 2,
						}
					},
					{
						Component = "creeper_whelen_700_turn_right",
						Position = Vector( 50.5, -130.23, 34 ),
						Angles = Angle( 180, 180, 0 ),
						Scale = 1,
						Phase = "ARROW_SLOW",
						BodyGroups = {
							["flange"] = 2,
						}
					},
					{
						Component = "creeper_whelen_700_rev",
						Position = Vector( 50.5, -130.23, 28 ),
						Angles = Angle( 0, 180, 0 ),
						Scale = 1,
						BodyGroups = {
							["flange"] = 2,
						}
					},
				}
			}
		}
	},
}