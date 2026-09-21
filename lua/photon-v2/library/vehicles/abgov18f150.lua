if (Photon2.ReloadVehicleFile()) then return end
local VEHICLE = Photon2.LibraryVehicle()

VEHICLE.Title 		= "18 f150"

VEHICLE.Vehicle		= "smfordresponder"

VEHICLE.Category 	= "Photon 2: alberta government services"

VEHICLE.Author		= "k9, datedgore44, goodmansamm"

local sequence = Photon2.SequenceBuilder.New

VEHICLE.BodyGroups = {
	["Wheels"] = 3,
	["Grille"] = 0,
    ["Bed"] = 3,
	["Front Bumper"] = 0,
	["Rear Bumper"] = 0,
	["Mirrors"] = 1,
	["Rear Seats"] = 0,
	["Partition"] = 1,
	["Center Console"] = 0,
	["Towbar"] = 1,
	["Responder Badge"] = 0,
	["Pushbar"] = 0,
}



VEHICLE.Equipment = {
    {
        Category = "lightbar",
        
        Options = {
             
			
           {
              Option = "minibar",
              Components = {
                 {
                   
                    Component = "photon_whe_legacy_54",
                    Position = Vector( 0, -47.5, 93.5 ),
                    Angles = Angle( 0, 90, 0 ),
                    Scale = 1,
                     Bones = {
                        ["clamp_left"] = {  Vector(0.2, -0, -.70), Angle(2, -0, 0), 1 },
                        ["clamp_right"] = { Vector(-0.2, -0, -.70), Angle(-2, 0, 0), 1 },
                        ["foot_left"] = {  Vector(-2.4, 0, .2), Angle(8, 0, 0), 1 },
                        ["foot_right"] = { Vector(2.4, 0, .2), Angle(-8, 0, 0), 1 },
                    },
                    BodyGroups = {
						["Feet"] = 2,
                        ["Clamps"] = 2,
						["Cable"] = 1,
					},
                     Segments = {
                        Light = {
                            FrameDuration = 1/20,
                            Frames = {
                                [1] = "[R] 1 3 5 7 31 33 35 37 39 29 9 11 13 15 17 19 21 23 25 27 ",
                                [2] = "[B]  2 4 6 8 30 32 34 36 38 40 10 12 14 16 18 20 22 24 26 28",
                            },
                            Sequences = {
                                ["CODE3"] = sequence():SetTiming(1/17):TripleFlash(1, 2):Do(2):Add(1,1,1,2,2,2):Do(4),
                            }
                        },
                        TDKN = {
                            FrameDuration = 1/20,
                            Frames = {
                                [1] = "[W] 44 42 46",
                                [2] = "[W] 41 43 45 ",
                               
                            },
                            Sequences = {
                                ["CODE3"] = sequence():SetTiming(1/17):TripleFlash(1, 2),

                            }
                        },
                    },
                    InputActions = {
                        ["Emergency.Warning"] = {
                            ["MODE1"] = {},
                            ["MODE2"] = {},
                            ["MODE3"] = { Light = "CODE3", TDKN = "CODE3"},
                        },
                    },
                    
                 },
                 
              },
			  Props = {
					
              	{
				Model = "models/supermighty/props/backrack_lightbarmount.mdl",
				Position = Vector( -23, -47.7, 91.75),
				Angles = Angle( 0, 90, 0 ),
				Scale = 1.02
			    },
			    {
				Model = "models/supermighty/props/backrack_lightbarmount.mdl",
               	Position = Vector( 23, -47.7, 91.75),
                Angles = Angle( 0, 90, 0 ),
				Scale = 1.02
			    },
         
			}
           },
           
        },
      },
	  {
        Category = "golight",
		
        Options = {
			 
			   {
              Option = "none",
              Components = {
              }
           },
           {
              Option = "position 1",
              Components = {
                 {
                   
                    Component = "photon_golight_2000gt",
                    Position = Vector( 04.5, 25, 90.2 ),
                    Angles = Angle( 01.2, 0, -4 ),
                    Scale = 1,
                    
                 },
                 
              }
           },
		  {
              Option = "position 2",
              Components = {
                 {
                   
                    Component = "photon_golight_2000gt",
                    Position = Vector( 0, -37, 92.95),
					Angles = Angle( 0, 0, 0 ),
                    Scale = 1,
                    
                 },
                 
              },
			   Props = {
					
              	{
				Model = "models/supermighty/props/backrack_lightbarmount.mdl",
				Position = Vector( -3, -47.7, 92.1),
				Angles = Angle( 0, 90, 0 ),
				Scale = Vector( 1.02, .5, 0.5 ),
			    },
				{
				Model = "models/supermighty/props/backrack_lightbarmount.mdl",
				Position = Vector( 3, -47.7, 92.1),
				Angles = Angle( 0, 90, 0 ),
				Scale = Vector( 1.02, .5, 0.5 ),
			    },
				{
				Model = "models/sprops/cuboids/height06/size_1/cube_6x6x6.mdl",
				Position = Vector( 0, -41.5, 93.15),
				Angles = Angle( 0, 90, 0 ),
				Scale = Vector( 2.7, 1.4, 0.02 ),
                SubMaterials = {
							--adjust this one to adjust the skin
							[0] = "models/supermighty/f150_supercab/black",
						},
			      },
			   
         
			}
           },
           
        },
      },
       {
		Category = "truck shit",
		Options = {
			{
				Option = "shit",
				Props = {
					
				{
					Model = "models/anemolis/props/f150_brushguard/anemolis_f150_brushguard.mdl",
					Position = Vector( 0, 130, 42 ),
					Angles = Angle( 0, 0, 0 ),
					Scale = 1,
				 },
                 {
						-- Adds realistic window tinting and is skinnable
						Model = "models/schmal/smf15018_glass.mdl",
						Position = Vector( 0, 0, 0 ),
						Angles = Angle( 0, 180, 0 ),
						Scale = 1,
					}
            
             
         
				},
                  Components = {
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
                },
				SubMaterials = {
					{ Id = 23, Material = "photon/common/blank" },
				},
			}
		}
	},
	{
		Category = "back rack",
		Options = {
			{
				Option = "tools",
				Props = {
					
				{
				Model = "models/b405/the_forest/weapons/modern_axe.mdl",
				Position = Vector( 06, -48.5, 85),
				Angles = Angle( -90, 0, 0 ),
				Scale = 1.1,
				},
				{
				Model = "models/b405/the_forest/weapons/plane_axe.mdl",
				Position = Vector( 29, -48.4, 79),
				Angles = Angle( -90, 0, 0 ),
				Scale = 1.1,
				},
				{
				Model = "models/weapons/nmrih/crowbar.mdl",
				Position = Vector( -22, -48.4, 79),
				Angles = Angle( -0, 90, 90 ),
				Scale = 1.1,
				},
            
             
         
				}
			},
			{
				Option = "tools + lights (activate with full scene)",
				Props = {
					
				{
				Model = "models/b405/the_forest/weapons/modern_axe.mdl",
				Position = Vector( 06, -48.5, 85),
				Angles = Angle( -90, 0, 0 ),
				Scale = 1.1,
				},
				{
				Model = "models/b405/the_forest/weapons/plane_axe.mdl",
				Position = Vector( 29, -48.4, 79),
				Angles = Angle( -90, 0, 0 ),
				Scale = 1.1,
				},
				{
				Model = "models/weapons/nmrih/crowbar.mdl",
				Position = Vector( -22, -48.4, 79),
				Angles = Angle( -0, 90, 90 ),
				Scale = 1.1,
				},
            
             
        
				}
			},
			{
				Option = "lights (activate with full scene)",
				Props = {
					
				{
					Model = "models/anemolis/props/f150_brushguard/anemolis_f150_brushguard.mdl",
					Position = Vector( 0, 130, 42 ),
					Angles = Angle( 0, 0, 0 ),
					Scale = 1,
				 },
            
             
         
				}
			}
		}
	},
	{
		Category = "interior",
		Options = {
			{
				Option = "locker",
				Props = {
					
				{
					Model = "1models/b405/the_forest/weapons/modern_axe.mdl",
					Position = Vector( 09, -48.5, 85),
				    Angles = Angle( 90, 0, 0 ),
					Scale = 1.1,
				 },
            
             
         
				}
			},
			{
				Option = "locker and storage",
				Props = {
					
				{
					Model = "models/anemolis/props/f150_brushguard/anemolis_f150_brushguard.mdl",
					Position = Vector( 0, 130, 42 ),
					Angles = Angle( 0, 0, 0 ),
					Scale = 1,
				 },
            
             
         
				}
			},
			{
				Option = "storage",
				Props = {
					
				{
					Model = "models/anemolis/props/f150_brushguard/anemolis_f150_brushguard.mdl",
					Position = Vector( 0, 130, 42 ),
					Angles = Angle( 0, 0, 0 ),
					Scale = 1,
				 },
            
             
         
				}
			},
			{
				Option = "storage and gun case",
				Props = {
					
				{
					Model = "models/anemolis/props/f150_brushguard/anemolis_f150_brushguard.mdl",
					Position = Vector( 0, 130, 42 ),
					Angles = Angle( 0, 0, 0 ),
					Scale = 1,
				 },
            
             
         
				}
			}
		}
	},
   {
		Category = "bed",
		Options = {

            
            
       
		{
			    Option = "toolbox 1",
				Props = {
					
               {
                    Model = "models/anemolis/props/anemolis_f150toolbox.mdl",
                    Position = Vector( 0, -58, 67.5),
                    Angles = Angle( 1.7, 90, 0 ),
                    Scale = 1.02
                },
         
			}
	    },
		{
				Option = "toolbox 2",
				Props = {
					
               {
                    Model = "models/anemolis/props/anemolis_f150toolbox.mdl",
                    Position = Vector( -31., -88.8, 68.3 ),
				    Angles = Angle( 0, 180., 1.3 ),
				    Scale = .93,
                },
         
			}
		},
         {
				Option = "toolbox 1 + cages",
				Props = {
					
              {
                Model = "models/anemolis/props/anemolis_f150toolbox.mdl",
                Position = Vector( 0, -58, 67.5),
                Angles = Angle( 1.7, 90, 0 ),
                Scale = 1.02,
                
                },
                {
					Model = "models/samm/dog_crate/dog_crate.mdl",
					Position = Vector( -15, -92, 41.4),
					Angles = Angle( 0,0, -.9 ),
					Scale = 1,

			    },
                {
					Model = "models/samm/cnr_cage/cnr_cage_small.mdl",
					Position = Vector( 19, -83, 57),
					Angles = Angle( 0,40, -.9 ),
					Scale = 1,
                    SubMaterials = {
							--adjust this one to adjust the skin
							[0] = "samm/dog_crate/crate_metal",
					},

			    },
                {
					Model = "models/samm/cnr_cage/cnr_cage_small.mdl",
					Position = Vector( 19, -113, 42.9),
					Angles = Angle( 0,92, 0 ),
					Scale = 1,
                    SubMaterials = {
							--adjust this one to adjust the skin
							[0] = "samm/dog_crate/crate_metal",
					},

			    },
                {
					Model = "models/samm/cnr_cage/cnr_cage_big.mdl",
					Position = Vector(25, -86, 42.4),
					Angles = Angle( 0,-2, -.9 ),
					Scale = 1,
                    SubMaterials = {
							--adjust this one to adjust the skin
							[0] = "samm/dog_crate/crate_metal",
					},

			    },
                {
					Model = "models/samm/cnr_cage/cnr_cage_big.mdl",
					Position = Vector(10, -86, 42.4),
					Angles = Angle( 0, 01 , -.9 ),
					Scale = 1,
                    SubMaterials = {
							--adjust this one to adjust the skin
							[0] = "samm/dog_crate/crate_metal",
					},

			    },
         
			}
		},
		 {
				Option = "toolbox 2 + cages",
				Props = {
					
              {
                    Model = "models/anemolis/props/anemolis_f150toolbox.mdl",
                    Position = Vector( -31., -88.8, 68.3 ),
					Angles = Angle( 0, 180., 1.3 ),
					Scale = .93,
                },
                {
					Model = "models/samm/dog_crate/dog_crate.mdl",
					Position = Vector( -4, -73, 41.4),
					Angles = Angle( 0,0, -.9 ),
					Scale = 1,

			    },
                {
					Model = "models/samm/cnr_cage/cnr_cage_small.mdl",
					Position = Vector( 26, -109, 42.9),
					Angles = Angle( 0,01, -0),
					Scale = 1,
                    SubMaterials = {
							--adjust this one to adjust the skin
							[0] = "samm/dog_crate/crate_metal",
					},

			    },
                {
					Model = "models/samm/cnr_cage/cnr_cage_small.mdl",
					Position = Vector( -4, -113, 57.6),
					Angles = Angle( 0,121, 0 ),
					Scale = 1,
                    SubMaterials = {
							--adjust this one to adjust the skin    
							[0] = "samm/dog_crate/crate_metal",
					},

			    },
                {
					Model = "models/samm/cnr_cage/cnr_cage_big.mdl",
					Position = Vector(-0, -118, 42.9),
					Angles = Angle( 0,-92, -0 ),
					Scale = 1,
                    SubMaterials = {
							--adjust this one to adjust the skin
							[0] = "samm/dog_crate/crate_metal",
					},

			    },
                {
					Model = "models/samm/cnr_cage/cnr_cage_big.mdl",
					Position = Vector(-0, -105, 42.9),
					Angles = Angle( 0, 91 , -0 ),
					Scale = 1,
                    SubMaterials = {
							--adjust this one to adjust the skin
							[0] = "samm/dog_crate/crate_metal",
					},

			    },
                {
					Model = "models/sal/fallout4/toolbox.mdl",
					Position = Vector( 22, -75, 43.1),
					Angles = Angle( 0,019, 0 ),
					Scale = 0.85,
				},
         
			}
		},
         {
				Option = "toolbox 1 + misc",
				Props = {

                {
                Model = "models/anemolis/props/anemolis_f150toolbox.mdl",
                Position = Vector( 0, -58, 67.5),
                Angles = Angle( 1.7, 90, 0 ),
                Scale = 1.02
                },
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
					Position = Vector( 10, -115, 43.1 ),
					Angles = Angle( 0, 10, 0),
					Scale = 1,
				},
				{
					Model = "models/w4nou/cone.mdl",
					Position = Vector( 10, -115, 43.1+1 ),
					Angles = Angle( 0, 80, 0),
					Scale = 1,
				},
				{
					Model = "models/w4nou/cone.mdl",
					Position = Vector( 10, -115, 43.1+1+1),
					Angles = Angle( 0,30, 0 ),
					Scale = 1,
			    },
                {
					Model = "models/kali/props/cases/hard case c.mdl",
					Position = Vector( 0, -83, 42.5),
					Angles = Angle( 0,88, 0 ),
					Scale = 1,
					SubMaterials = {
							--adjust this one to adjust the skin
							[0] = "models/kali/props/cases/hardcase/hardcase_c_black",
					},
				},
                 {
					Model = "models/passtime/duffel_bags/duffel_red_closed.mdl",
					Position = Vector( -18.5, -111, 43.1),
					Angles = Angle( 0,110, 0 ),
					Scale = 0.9,
				},
         
			}
		},
		{
				Option = "toolbox 2 + misc",
				Props = {

                 {
                    Model = "models/anemolis/props/anemolis_f150toolbox.mdl",
                	Position = Vector( -31., -88.8, 68.3 ),
					Angles = Angle( 0, 180., 1.3 ),
					Scale = .93,
                },
                {
					Model = "models/w4nou/cone.mdl",
					Position = Vector( 28.8, -111, 43.1 ),
					Angles = Angle( 0, 20, 0),
					Scale = 1,
				},
				{
					Model = "models/w4nou/cone.mdl",
					Position = Vector( 28.8, -111, 43.1+1 ),
					Angles = Angle( 0, 0, 0),
					Scale = 1,
				},
				{
					Model = "models/w4nou/cone.mdl",
					Position = Vector( 28.8, -111, 43.1+1+1),
					Angles = Angle( 0, 50, 0 ),
					Scale = 1,
				},
				{
					Model = "models/w4nou/cone.mdl",
					Position = Vector( 10, -115, 43.1 ),
					Angles = Angle( 0, 10, 0),
					Scale = 1,
				},
				{
					Model = "models/w4nou/cone.mdl",
					Position = Vector( 10, -115, 43.1+1 ),
					Angles = Angle( 0, 80, 0),
					Scale = 1,
				},
				{
					Model = "models/w4nou/cone.mdl",
					Position = Vector( 10, -115, 43.1+1+1),
					Angles = Angle( 0,30, 0 ),
					Scale = 1,
				},
                {
					Model = "models/kali/props/cases/hard case c.mdl",
					Position = Vector( 6, -68, 42.5),
					Angles = Angle( 0,90, 0 ),
					Scale = 1,
					SubMaterials = {
							--adjust this one to adjust the skin
							[0] = "models/kali/props/cases/hardcase/hardcase_c_black",
					},
				},
                {
					Model = "models/passtime/duffel_bags/duffel_red_closed.mdl",
					Position = Vector( -11.5, -104, 43.1),
					Angles = Angle( 0,-9, 0 ),
					Scale = 1,
				},
				{
					Model = "models/sal/fallout4/toolbox.mdl",
					Position = Vector( 16.5, -95, 43.1),
					Angles = Angle( 0,115, 0 ),
					Scale = 0.85,
				},
         
			}
		},
        
		}
	},
}