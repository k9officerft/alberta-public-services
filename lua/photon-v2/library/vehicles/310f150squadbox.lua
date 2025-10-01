if (Photon2.ReloadVehicleFile()) then return end
local VEHICLE = Photon2.LibraryVehicle()

 
VEHICLE.Title 		= "f150 boxes"
 
VEHICLE.Vehicle		= "smfordresponder"
 
VEHICLE.Category 	= "Photon 2: alberta wildfire service"
 
VEHICLE.Author		= "k9, datedgore44, goodmansamm"

local sequence = Photon2.SequenceBuilder.New

VEHICLE.BodyGroups = {
	["Wheels"] = 3,
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


VEHICLE.Equipment = {
	 {
        Category = "Lights",
      
        Options = {
           {
 
              Option = "legend",
              Components = {
                 {
                   
                Component = "photon_fedsig_legend",
				Position = Vector( 0, -48.5, 106.6 ),
				Angles = Angle( 01, 90, 0 ),
                Scale = 1.06,
                Segments = {
						 Light = {
							 FrameDuration = 1/9,
							 Frames = {
								 [1] = "[A] 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22" ,
								 [2] = "[A] 3 4 23 24",
								 [3] = "[A] 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 3 4 25 26 23 24",
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
						   ["MODE1"] = { },
						   ["MODE2"] = { },
						   ["MODE3"] = { Light = "ON"},
					   },
					   ["Emergency.Directional"] = {
						 ["LEFT"] = { TA = "left" },
						 ["RIGHT"] = { TA = "right" },
						 ["CENOUT"] = { TA = "cenout" },
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
                 
              },
			  Props = {
			  {
				Model = "models/supermighty/props/backrack_lightbarmount.mdl",
				Position = Vector( 20, -48.65, 103.5),
				Angles = Angle( 01, 90, 0 ),
				Scale = .9
			  },
			  {
				Model = "models/supermighty/props/backrack_lightbarmount.mdl",
             	Position = Vector( -20, -48.65, 103.5),
				Angles = Angle( 01, 90, 0 ),
				Scale = .9
			},
		  }
           },
           
        },
      },
	   {
        Category = "ext",
      
        Options = {
           {
 
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
                                [1] = "[A] 1 ",
                                [2] = "[A] 1",

                                
                            },
                            Sequences = {
                                ["CODE3"] = sequence():SetTiming(1/22):FlashHold(1, 2, 4):FlashHold(0, 2, 4),
                                 }
                             },
                         },
                        InputActions = {
                             ["Emergency.Warning"] = {
                                 ["MODE1"] = { },
								 ["MODE2"] = { Light = "CODE3",},
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
                                [1] = "[A] 1 ",
                                [2] = "[A] 1",

                                
                            },
                            Sequences = {
                                ["CODE3"] = sequence():SetTiming(1/22):FlashHold(0, 2, 4):FlashHold(1, 2, 4),
                                 }
                             },
                         },
                         InputActions = {
                             ["Emergency.Warning"] = {
                                 ["MODE1"] = { },
								 ["MODE2"] = { Light = "CODE3",},
                                 ["MODE3"] = { Light = "CODE3",  },
                             },
                         },

                    
                 },
				  {
                 Name = "@vertex",
                  Component = "anemolis_whelen_vertex",
                    Position = Vector( -43.4, -126.4, 70 ),
                    Angles = Angle( 0, 180, -89 ),
                  Scale = 1,
                    Segments = {
                        Light = {
                            Frames = {
                                [1] = "[A] 1 ",
                                [2] = "[A] 2",

                                
                            },
                            Sequences = {
                                ["CODE3"] = sequence():SetTiming(1/22):FlashHold(1, 2, 4):FlashHold(0, 2, 4),
                                 }
                             },
                         },
                        InputActions = {
                             ["Emergency.Warning"] = {
                                 ["MODE1"] = { },
								 ["MODE2"] = { Light = "CODE3",},
                                 ["MODE3"] = { Light = "CODE3",  },
                             },
                         },
                    
                 },
				  {
                    Inherit = "@vertex",
                    Component = "anemolis_whelen_vertex",
                    Position = Vector( 43.4, -126.4, 70 ),
                    Angles = Angle( 0, 180, -89 ),
                    Scale = 1,
					Phase = 180
                    
                 },
				   {
                    Inherit = "@vertex",
                    Component = "anemolis_whelen_vertex",
                    Position = Vector(  -48.4, -48.5, 89 ),
                    Angles = Angle( 02, 90, -90 ),
                    Scale = 1,
					Phase = 0
                    
                 },
				   {
                    Inherit = "@vertex",
                    Component = "anemolis_whelen_vertex",
                     Position = Vector(  -48.4, -122, 91.5 ),
                    Angles = Angle( 02, 90, -90 ),
                    Scale = 1,
					Phase = 180
                    
                 },
				  {
                    Inherit = "@vertex",
                    Component = "anemolis_whelen_vertex",
                    Position = Vector(  48.4, -48.5, 89 ),
                    Angles = Angle( -2, -90, -90 ),
                    Scale = 1,
					Phase = 0
                    
                 },
				   {
                    Inherit = "@vertex",
                    Component = "anemolis_whelen_vertex",
                     Position = Vector( 48.4, -122, 91.5 ),
                    Angles = Angle( -2, -90, -90 ),
                    Scale = 1,
					Phase = 180
                    
                 },
				 {
                        Component = "photon_standard_smf15018",
                        Segments = {
                            ["WIGWAG_REAR"] = {
                                Off = "PASS",
                                Frames = {
                                    [1] = "[~SW] 11 [~R] 10 18",
                                    [2] = "[~SW] 12 [~R] 9 17",
                                    [3] = "[PASS] 9 10 17 18"
                                },
                                Sequences = {
                                    ["ALT"] = sequence():Alternate( 1, 2, 7 ),
                                    ["CUT"] = { 3 },
                                }
                            },
                        },
                        InputActions = {
                            ["Emergency.Warning"] = {
                                ["MODE1"] = {["WIGWAG"] = "ALT", ["WIGWAG_REAR"] = "ALT"},
								 ["MODE2"] = {["WIGWAG"] = "ALT", ["WIGWAG_REAR"] = "ALT"},
                                ["MODE3"] = {["WIGWAG"] = "ALT", ["WIGWAG_REAR"] = "ALT"},
                            },
                           
                        },
                        
                    },
                 
              }
           },
           
        },
      },
    {
        Category = "settup",
      
        Options = {
          {
				Option = "1",
            BodyGroups = {
					{ BodyGroup = "bed", Value = 0 },
				},
				Props = {

					{
						Model = "models/samm/bedbox1/bedbox1dia.mdl",
						Position = Vector( 0, 0, 0 ),
						Angles = Angle( 0, -90, 0 ),
						Scale = 1,
					},
				}
			},
         {
				Option = "2",
            BodyGroups = {
					{ BodyGroup = "bed", Value = 0 },
				},
				Props = {

					{
						Model = "models/samm/bedbox1/bedbox1.mdl",
						Position = Vector( 0, 0, 0 ),
						Angles = Angle( 0, -90, 0 ),
						Scale = 1,
						Color = Color( 0, 0, 0 ),
						SubMaterials = {
							--adjust this one to adjust the skin
							[1] = "k9s/bedbox1/bedbox1_main",
						},
					},
				}
			}
           
        },
      },	

}