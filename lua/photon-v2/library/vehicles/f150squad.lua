if (Photon2.ReloadVehicleFile()) then return end
local VEHICLE = Photon2.LibraryVehicle()

-- The readable title of your vehicle
VEHICLE.Title 		= "f150 squad"
-- The vehicle from which yours is based upon
VEHICLE.Vehicle		= "smfordresponder"
-- The vehicle's spawn category
VEHICLE.Category 	= "Photon 2: alberta wildfire service"
-- Your name
VEHICLE.Author		= "k9, datedgore44, goodmansamm"

local sequence = Photon2.SequenceBuilder.New

VEHICLE.BodyGroups = {
	["Wheels"] = 3,
	["Grille"] = 0,
   ["Bed"] = 2,
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
				 Position = Vector( 0, 10, 93.7 ),
                        Angles = Angle( 2, 90, 0 ),
                Scale = 1,
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
							["foot_right"] = { Vector(-1, 0, 0), Angle(5, 0, 0), 1},
							["foot_left"] = { Vector(1, 0, 0), Angle(-5, 0, 0), 1 },
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
                  Position = Vector( -12, 132.4, 47.3),
                  Angles = Angle( 00, 07, 0 ),
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
                     Position = Vector( 12, 132.4, 47.3),
                  Angles = Angle( 00, -7, 0 ),
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
				  {
                 Name = "@vertex",
                  Component = "anemolis_whelen_vertex",
                    Position = Vector( -30, -135.8, 34 ),
                    Angles = Angle( 0, 177, -91 ),
                  Scale = 1,
                    Segments = {
                        Light = {
                            Frames = {
                                [1] = "[R] 1 ",
                                [2] = "[A] 2",

                                
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
                    Inherit = "@vertex",
                    Component = "anemolis_whelen_vertex",
                    Position = Vector( 30, -135.8, 34 ),
                    Angles = Angle( 0, 183, -91 ),
                    Scale = 1,
					Phase = 180
                    
                 },
                 
              }
           },
           
        },
      },

}