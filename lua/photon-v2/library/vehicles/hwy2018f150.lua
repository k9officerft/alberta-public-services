if (Photon2.ReloadVehicleFile()) then return end
local VEHICLE = Photon2.LibraryVehicle()

VEHICLE.Title 		= "2018 f150"

VEHICLE.Vehicle		= "smfordresponder"

VEHICLE.Category 	= "Photon 2: alberta sheriffs"

VEHICLE.Author		= "k9, datedgore44, goodmansamm"

local sequence = Photon2.SequenceBuilder.New

VEHICLE.BodyGroups = {
   ["Bed"] = 0,
	["Mirrors"] = 0,
	["Rear Seats"] = 0,
	["Center Console"] = 0,
	["Towbar"] = 0,
	["Responder Badge"] = 0,
	["Pushbar"] = 0,
}

VEHICLE.Siren = { "whelen_epsilon" }

VEHICLE.Equipment = {
     {
        Category = "trim",
        Options = {
           {
              Option = "black",
                 BodyGroups = {
					{ BodyGroup = "Front Bumper", Value = 0},
                    { BodyGroup = "Rear Bumper", Value = 0},
                    { BodyGroup = "Grille", Value = 0},
				},
                 
                 
           },
           {
              Option = "black + fogs",
              BodyGroups = {
					{ BodyGroup = "Front Bumper", Value = 1},
                    { BodyGroup = "Rear Bumper", Value = 0},
                    { BodyGroup = "Grille", Value = 0},
				},
           },
            {
              Option = "Chrome",
              BodyGroups = {
					{ BodyGroup = "Front Bumper", Value = 4},
                    { BodyGroup = "Rear Bumper", Value = 2},
                    { BodyGroup = "Grille", Value = 2},
				},
           },
            {
              Option = "chrome + fogs",
               BodyGroups = {
					{ BodyGroup = "Front Bumper", Value = 5},
                    { BodyGroup = "Rear Bumper", Value = 2},
                    { BodyGroup = "Grille", Value = 2},
				},
           },
            {
              Option = "black and chrome + fogs",
               BodyGroups = {
					{ BodyGroup = "Front Bumper", Value = 5},
                    { BodyGroup = "Rear Bumper", Value = 2},
                    { BodyGroup = "Grille", Value = 0},
				},
           },
           
        },
      },
       {
        Category = "Wheels",
        Options = {
           {
              Option = "fleet black",
                 BodyGroups = {
					{ BodyGroup = "Wheels", Value = 3},
				},
                 
                 
           },
           {
              Option = "fleet standard",
                 BodyGroups = {
					{ BodyGroup = "Wheels", Value = 2},
				},
                 
                 
           },
            {
              Option = "Stock",
                 BodyGroups = {
					{ BodyGroup = "Wheels", Value = 1},
				},
                 
                 
           },
            {
              Option = "Lariat",
                 BodyGroups = {
					{ BodyGroup = "Wheels", Value = 0},
				},
                 
                 
           },
           
        },
      },
       {
        Category = "cage",
        Options = {
           {
              Option = "yes",
                 BodyGroups = {
					{ BodyGroup = "Partition", Value = 0},
				},
                 
                 
           },
           {
              Option = "no",
                 BodyGroups = {
					{ BodyGroup = "Partition", Value = 1},
				},
                 
                 
           },
           
        },
      },
    
    
    {
        Category = "Lightbar",
        Options = {
           {
              Option = "Legacy action flash",
              Components = {
                 {
                   
                    Component = "photon_whe_legacy_54",
                    Position = Vector( 0, 10, 92.4 ),
                    Angles = Angle( 2, 90, 0 ),
                    Scale = 0.96,
                    Bones = {
                        ["clamp_left"] = {  Vector(0.2, -0, -.70), Angle(2, -0, 0), 1 },
                        ["clamp_right"] = { Vector(-0.2, -0, -.70), Angle(-2, 0, 0), 1 },
                        ["foot_left"] = {  Vector(-2.4, 0, .2), Angle(8, 0, 0), 1 },
                        ["foot_right"] = { Vector(2.4, 0, .2), Angle(-8, 0, 0), 1 },
                    },
                     Elements = {
                            [44] = { "Primary",  Vector( 6.94, -1.65, 1.12 ), Angle( 0, -90, 0 ) },
                            [42] = { "Primary", Vector( 6.94, -4.78, 1.12 ), Angle( 0, -90, 0 ) },
                            [41] = { "Primary",  Vector( 6.94, 4.78, 1.12 ), Angle( 0, -90, 0 ) },
                            [43] = { "Primary", Vector( 6.94, 1.65, 1.12 ), Angle( 0, -90, 0 ) },
                            [45] = { "Primary",  Vector( 0, 34.78, 1.12 ), Angle( 0, 0, 0 ) },
                            [46] = { "Primary",  Vector( 0, -34.78, 1.12 ), Angle( 0, 180, 0 ) },
                          
                        },
                    
                    Segments = {
                        Light = {
                            FrameDuration = 1/20,
                            Frames = {
                                [1] = "[R] 1 3 5 7 31 33 35 37 39 29 9 11 13 15 17 19 21 23 25 27 41 43 45",
                                [2] = "[B]  2 4 6 8 30 32 34 36 38 40 10 12 14 16 18 20 22 24 26 28 44 42 46",
                            },
                            Sequences = {
                                ["CODE3"] = sequence():SetTiming(1/17):TripleFlash(1, 2):Do(2):Add(1,1,1,2,2,2):Do(4),
                            }
                        },
                       
                    },
                    InputActions = {
                        ["Emergency.Warning"] = {
                            ["MODE1"] = {},
                            ["MODE2"] = {},
                            ["MODE3"] = { Light = "CODE3", },
                        },
                    },
                      BodyGroups = {
									 ["Takedown"] = 1,
                                      ["Alley"] = 1,
						},
                 },
                 
              }
           },
            {
              Option = "Legacy tripple flash",
              Components = {
                 {
                   
                    Component = "photon_whe_legacy_54",
                Position = Vector( 0, 10, 92.4 ),
                        Angles = Angle( 2, 90, 0 ),
                    Scale = 0.96,
                    Bones = {
                        ["clamp_left"] = {  Vector(0.2, -0, -.70), Angle(2, -0, 0), 1 },
                        ["clamp_right"] = { Vector(-0.2, -0, -.70), Angle(-2, 0, 0), 1 },
                        ["foot_left"] = {  Vector(-2.4, 0, .2), Angle(8, 0, 0), 1 },
                        ["foot_right"] = { Vector(2.4, 0, .2), Angle(-8, 0, 0), 1 },
                    },
                    Elements = {
                            [44] = { "Primary",  Vector( 6.94, -1.65, 1.12 ), Angle( 0, -90, 0 ) },
                            [42] = { "Primary", Vector( 6.94, -4.78, 1.12 ), Angle( 0, -90, 0 ) },
                            [41] = { "Primary",  Vector( 6.94, 4.78, 1.12 ), Angle( 0, -90, 0 ) },
                            [43] = { "Primary", Vector( 6.94, 1.65, 1.12 ), Angle( 0, -90, 0 ) },
                            [45] = { "Primary",  Vector( 0, 34.78, 1.12 ), Angle( 0, 0, 0 ) },
                            [46] = { "Primary",  Vector( 0, -34.78, 1.12 ), Angle( 0, 180, 0 ) },
                          
                        },
                    
                    Segments = {
                        Light = {
                            FrameDuration = 1/0,
                            Frames = {
                                [1] = "[R] 1 3 5 7 31 33 35 37 39 29 9 11 13 15 17 19 21 23 25 27 41 43 45",
                                [2] = "[B]  2 4 6 8 30 32 34 36 38 40 10 12 14 16 18 20 22 24 26 28 44 42 46",
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
                            ["MODE3"] = { Light = "CODE3",},
                        },
                    },
                      BodyGroups = {
									 ["Takedown"] = 1,
                                      ["Alley"] = 1,
						},
                 },
                 
              }
           },
            {
                Option = "xlp action flash",
                Components = {
                    {
                       
                        Component = "photon_whe_inneredgexlp",
                        Position = Vector(0, 46, 82.4),
                        Angles = Angle(0, 0, 0),
                        Scale = 1,
                        SubMaterials = {
                            ["sentry/props/inneredgexlp/chrome"] = "sentry/sleepy_police/xlpchrome",
                            ["sentry/props/inneredgexlp/chrome_dull"] = "sentry/sleepy_police/xlpchrome_dull",
                            ["sentry/props/inneredgexlp/linear_diffuser_refract"] = "sentry/sleepy_police/glass_black",
                        },
                        Options = {
							Offset = 0.3,
						},
                        Bones = {
                            ["left"] = { Vector(0, 0, 0), Angle(0, 0, 0), 1 },
                            ["right"] = { Vector(0, 0, 0), Angle(0, 0, 0), 1 },
                        },
                        Segments = {
                            Light = {
                                FrameDuration = 1/20,
                                Frames = {
                                    [1] = "[R] 1 2 3 4 5 6 13 14 15 16 17",
                                    [2] = "[B] 7 8 9 10 11 12 18 19 20 21 22",
                                   
                                },
                                Sequences = {
                                    ["CODE3"] = sequence():SetTiming(1/17):TripleFlash(1, 2):Do(2):Add(1,1,1,2,2,2):Do(4),
                                }
                            },
                          },
                         InputActions = {
                             ["Emergency.Warning"] = {
                                 ["MODE1"] = { },
                                 ["MODE2"] = { },
                                 ["MODE3"] = { Light = "CODE3", },
                             },
                        },
                        
                        
                     },
                      
                   
                },
                
           },
           {
                Option = "xlp tripple flash",
                Components = {
                    {
                       
                        Component = "photon_whe_inneredgexlp",
                        Position = Vector(0, 46, 82.4),
                        Angles = Angle(0, 0, 0),
                        Scale = 1,
                        SubMaterials = {
                            ["sentry/props/inneredgexlp/chrome"] = "sentry/sleepy_police/xlpchrome",
                            ["sentry/props/inneredgexlp/chrome_dull"] = "sentry/sleepy_police/xlpchrome_dull",
                            ["sentry/props/inneredgexlp/linear_diffuser_refract"] = "sentry/sleepy_police/glass_black",
                        },
                        Options = {
							Offset = 0.3,
						},
                        Bones = {
                            ["left"] = { Vector(0, 0, 0), Angle(0, 0, 0), 1 },
                            ["right"] = { Vector(0, 0, 0), Angle(0, 0, 0), 1 },
                        },
                        
                        Segments = {
                            Light = {
                                FrameDuration = 1/0,
                                Frames = {
                                    [2] = "[B] 7 8 9 10 11 12 18 19 20 21 22",
                                    [1] = "[R] 1 2 3 4 5 6 13 14 15 16 17",
                                   
                                },
                                Sequences = {
                                    ["CODE3"] = sequence():SetTiming(1/17):TripleFlash(1, 2),
                                }
                            },
                          },
                         InputActions = {
                             ["Emergency.Warning"] = {
                                 ["MODE1"] = { },
                                 ["MODE2"] = { },
                                 ["MODE3"] = { Light = "CODE3", },
                             },
                        },
                        
                        
                     },
                      
                   
                },
                
           },
           
        },
      },
       {
        Category = "front ext",
        Options = {
            
           {
              Option = "ions black 4",
              Components = {
                 {
                     Name = "@front1",
                     Component = "photon_whe_ion_surface_bracket",
                   Position = Vector( -14, 129.4, 44.5),
                     Angles = Angle( 0.4, 8, 0 ),
                     Scale = 0.8,
                      Segments = {
                        Light = {
                            Frames = {
                                [1] = "[R] 1 ",

                                
                            },
                            Sequences = {
                                ["CODE3"] = sequence():SetTiming(1/17):TripleFlash(1, 0),
                                 }
                             },
                         },
                         InputActions = {
                             ["Emergency.Warning"] = {
                                 ["MODE1"] = {},
								["MODE2"] = {Light = "CODE3",},
                                 ["MODE3"] = { Light = "CODE3",  },
                             },
                         },
                 
                  },
                  {
                     Name = "@front2",
                     Component = "photon_whe_ion_surface_bracket",
                    Position = Vector( 14, 129.4, 44.5),
                     Angles = Angle( -0.4, -8, 0 ),
                     Scale = 0.8,

                      Segments = {
                        Light = {
                            Frames = {
                                [2] = "[B] 1 ",

                                
                            },
                            Sequences = {
                                ["CODE3"] =  sequence():SetTiming(1/17):TripleFlash(0, 2),
                                 }
                             },
                         },
                         InputActions = {
                             ["Emergency.Warning"] = {
                                 ["MODE1"] = {},
								["MODE2"] = {Light = "CODE3",},
                                 ["MODE3"] = { Light = "CODE3",  },
                             },
                         },
                 
                  },
                  {
                     Inherit = "@front1",
                     Component = "photon_whe_ion_surface",
                   Position = Vector( -45.5, 91.7, 47.3),
                     Angles = Angle( 0, 90, 00 ),
                     Scale = 0.8
                 
                  },
                   {
                     Inherit = "@front2",
                     Component = "photon_whe_ion_surface",
                      Position = Vector( 45.5, 91.7, 47.3),
                     Angles = Angle( 0, -90, 00 ),
                     Scale = 0.8
                 
                  },
                 
              }
           },
           {
              Option = "ions black and white 4",
              Components = {
                 {
                     Inherit = "@front1",
                     Component = "photon_whe_ion_surface_bracket",
                     Position = Vector( -14, 129.4, 44.5),
                     Angles = Angle( 0.4, 8, 0 ),
                     Scale = 0.8,
                 
                  },
                  {
                     Inherit = "@front2",
                     Component = "photon_whe_ion_surface_bracket",
                     Position = Vector( 14, 129.4, 44.5),
                     Angles = Angle( -0.4, -8, 0 ),
                     Scale = 0.8,

                 
                  },
                   {
                     Inherit = "@front1",
                     Component = "photon_whe_ion_surface",
                   Position = Vector( -45.5, 91.7, 47.3),
                     Angles = Angle( 0, 90, 00 ),
                     Scale = 0.8,  
                     SubMaterials = {
                            ["models/supermighty/shared/black"] = "models/supermighty/shared/skin",
                        },
                 
                  },
                   {
                     Inherit = "@front2",
                     Component = "photon_whe_ion_surface",
                      Position = Vector( 45.5, 91.7, 47.3),
                     Angles = Angle( 0, -90, 00 ),
                     Scale = 0.8,
                      SubMaterials = {
                            ["models/supermighty/shared/black"] = "models/supermighty/shared/skin",
                        },
                 
                  },
                 
              }
           },
           {
              Option = "ions 2 smoked",
              Components = {
                 {
                     Inherit = "@front2",
                     Component = "photon_whe_ion_surface_bracket",
                    Position = Vector( -14, 129.4, 44.5),
                     Angles = Angle( 0.4, 8, 0 ),
                     Scale = 0.8,
                     SubMaterials = {
                            ["sentry/props/ion_photon/ion_glass"] = "sentry/sleepy_police/ion_glass_black",
                            ["sentry/props/ion_photon/ion"] = "sentry/sleepy_police/ion_black",
                        },
                 
                  },
                  {
                     Inherit = "@front1",
                     Component = "photon_whe_ion_surface_bracket",
                     Position = Vector( 14, 129.4, 44.5),
                     Angles = Angle( -0.4, -8, 0 ),
                     Scale = 0.8,
                     SubMaterials = {
                            ["sentry/props/ion_photon/ion_glass"] = "sentry/sleepy_police/ion_glass_black",
                            ["sentry/props/ion_photon/ion"] = "sentry/sleepy_police/ion_black",
                        },
                 
                  },
                 
              }
           },
           {
              Option = "ions 2 smoked + fog light",
              Components = {
                 {
                     Inherit = "@front1",
                     Component = "photon_whe_ion_surface_bracket",
                     Position = Vector( -14, 129.4, 44.5),
                     Angles = Angle( 0.4, 8, 0 ),
                     Scale = 0.8,
                     SubMaterials = {
                            ["sentry/props/ion_photon/ion_glass"] = "sentry/sleepy_police/ion_glass_black",
                            ["sentry/props/ion_photon/ion"] = "sentry/sleepy_police/ion_black",
                        },
                 
                  },
                  {
                     Inherit = "@front2",
                     Component = "photon_whe_ion_surface_bracket",
                     Position = Vector( 14, 129.4, 44.5),
                     Angles = Angle( -0.4, -8, 0 ),
                     Scale = 0.8,
                     SubMaterials = {
                            ["sentry/props/ion_photon/ion_glass"] = "sentry/sleepy_police/ion_glass_black",
                            ["sentry/props/ion_photon/ion"] = "sentry/sleepy_police/ion_black",
                        },
                 
                  },
                   {
                     Inherit = "@front1",
                     Component = "photon_whe_ion_surface",
                     Position = Vector( -29.7, 125.2, 29),
                     Angles = Angle( 01, 80, 01 ),
                     Scale = 0.75,
                     SubMaterials = {
                            ["sentry/props/ion_photon/ion_glass"] = "sentry/sleepy_police/ion_glass_black",
                            ["sentry/props/ion_photon/ion"] = "sentry/sleepy_police/ion_black",
                        },
                 
                  },
                   {
                     Inherit = "@front2",
                     Component = "photon_whe_ion_surface",
                     Position = Vector( 29.7, 125.2, 29),
                     Angles = Angle( 01, -80, 01 ),
                     Scale = 0.75,
                     SubMaterials = {
                            ["sentry/props/ion_photon/ion_glass"] = "sentry/sleepy_police/ion_glass_black",
                            ["sentry/props/ion_photon/ion"] = "sentry/sleepy_police/ion_black",
                        },
                 
                  },
                 
              }
           },
           
        },
      },
      {
        Category = "tracers",
        Options = {
             
           {
              Option = "no",
              Components = {
                 
                 
              }
           },
           {
              Option = "tripple flash 1",
              Components = {
                {
                    Component = "photon_whe_tracer6",
                    Position = Vector(40.5, 3, 22.2),
                     Angles = Angle(-1, -90, 0),
                    Scale = 1.1,
                     RenderGroup = RENDERGROUP_OPAQUE,
                    Segments = {
                        Light = {
                            FrameDuration = 1/20,
                            Frames = {
                                [1] = "[R] 1  3  5",
                                [2] = "[B] 2  4  6 ",
                            },
                            Sequences = {
                                ["CODE3"] = sequence():SetTiming(1/17):TripleFlash(1, 2),
                            }
                        },
                     },
                    InputActions = {
                        ["Emergency.Warning"] = {
                            ["MODE1"] = { },
                            ["MODE2"] = {Light = "CODE3", },
                            ["MODE3"] = { Light = "CODE3",},
                        },
                    }, 
                    
                    
                    
                 },
                 {
                    Component = "photon_whe_tracer6",
                    Position = Vector(-40.5, 20, 21.8),
                     Angles = Angle(0.6, 90, 0),
                    Scale = 1.1,
                    SubMaterials = {
                        ["sentry/shared/glass"] = "sentry/sleepy_police/glass_black",
                    },
                    RenderGroup = RENDERGROUP_OPAQUE,
                    Segments = {
                        Light = {
                            FrameDuration = 1/20,
                            Frames = {
                                [1] = "[R] 1  3  5 ",
                                [2] = "[B] 2  4  6",
                            },
                            Sequences = {
                                ["CODE3"] = sequence():SetTiming(1/17):TripleFlash(1, 2),
                            }
                        },
                     },
                    InputActions = {
                        ["Emergency.Warning"] = {
                            ["MODE1"] = { },
                            ["MODE2"] = {Light = "CODE3", },
                            ["MODE3"] = { Light = "CODE3",},
                        },
                    }, 
                    
                    
                 },
            }
           },
           {
              Option = "tripple flash 2, smoked",
              Components = {
                {
                    Component = "photon_whe_tracer6",
                    Position = Vector(40.5, 3, 22.2),
                     Angles = Angle(-1, -90, 0),
                    Scale = 1.1,

                     RenderGroup = RENDERGROUP_OPAQUE,
                    Segments = {
                        Light = {
                            FrameDuration = 1/20,
                            Frames = {
                                [1] = "[B] 1 2 3 4 5 6",
                            },
                            Sequences = {
                                ["CODE3"] = sequence():SetTiming(1/17):TripleFlash(0, 1),
                            
                            }
                        },
                     },
                    InputActions = {
                        ["Emergency.Warning"] = {
                            ["MODE1"] = { },
                            ["MODE2"] = {Light = "CODE3", },
                            ["MODE3"] = { Light = "CODE3",},
                        },
                    }, 
                    
                    	SubMaterials = {
                        ["sentry/shared/glass"] = "sentry/sleepy_police/glass_black",
                    },
                    
                    
                 },
                 {
                    Component = "photon_whe_tracer6",
                    Position = Vector(-40.5, 20, 21.8),
                     Angles = Angle(0.6, 90, 0),
                    Scale = 1.1,
                    SubMaterials = {
                        ["sentry/shared/glass"] = "sentry/sleepy_police/glass_black",
                    },
                    RenderGroup = RENDERGROUP_OPAQUE,

                    Segments = {
                        Light = {
                            FrameDuration = 1/20,
                            Frames = {
                                [1] = "[R] 1 2 3 4 5 6",
                            },
                            Sequences = {
                                ["CODE3"] = sequence():SetTiming(1/17):TripleFlash(1, 0),
                            }
                        },
                     },
                    InputActions = {
                        ["Emergency.Warning"] = {
                            ["MODE1"] = { },
                            ["MODE2"] = {Light = "CODE3", },
                            ["MODE3"] = { Light = "CODE3",},
                        },
                    }, 
                    	SubMaterials = {
                        ["sentry/shared/glass"] = "sentry/sleepy_police/glass_black",
                    },
                    
                    
                 },
            }
           },
           
        },
      },
       {
        Category = "mirrors",
        Options = {
           {
              Option = "intersectors",
              Components = {
                 
                 
              }
           },
           {
              Option = "none",
              Components = {
                 
                 
              }
           },
           
        },
      },
       {
        Category = "rear window",
        Options = {
           {
              Option = "m4s",
              Components = {
                 
                 
              }
           },
           {
              Option = "none",
              Components = {
                 
                 
              }
           },
           
        },
      },
       {
        Category = "tailgate",
        Options = {
             

           
           {
              Option = "2, licence plate",
              Components = {
                  {
                     Inherit = "@front2",
                     Component = "photon_whe_ion_surface",
                      Segments = {
                        BRAKE = {
                            FrameDuration = 1/20,
                            Frames = {
                                [1] = "[R] 1",
                            },
                            Sequences = {
                                ["brake"] = sequence():SetTiming(1/30):DoubleFlash(1):Steady( 1, 1 ):SetRepeating(false),
                            }
                        },
                     },
                    InputActions = {
                         ["Vehicle.Brake"] = {
							["BRAKE"] = { BRAKE = "brake" },
						},
                       
                    }, 
                  	Position = Vector( 4, -131.25, 36.65 ),
						Angles = Angle( 0, 180, -1 ),
						Scale = .7,
                 
                  },
                  {
                     Inherit = "@front1",
                     Component = "photon_whe_ion_surface",
                      Segments = {
                        BRAKE = {
                            FrameDuration = 1/20,
                            Frames = {
                                [1] = "[R] 1",
                            },
                            Sequences = {
                                ["brake"] = sequence():SetTiming(1/30):DoubleFlash(1):Steady( 1, 1 ):SetRepeating(false),
                            }
                        },
                     },
                    InputActions = {
                         ["Vehicle.Brake"] = {
							["BRAKE"] = { BRAKE = "brake" },
						},
                       
                    }, 
                   	Position = Vector( -4, -131.25, 36.65 ),
						Angles = Angle( 0, 180, -1 ),
						Scale = .7,
                 
                  },
                
                 
                 
              }
           },
          {
              Option = "4, under, smoked",
              Components = {
                {
                     Inherit = "@front2",
                     Component = "photon_whe_ion",
                  	Position = Vector( 18, -128.6, 38.3 ),
						Angles = Angle( -.3, 180, 0 ),
						Scale = .84,
                         SubMaterials = {
                            ["sentry/props/ion_photon/ion_glass"] = "sentry/sleepy_police/ion_glass_black",
                            ["sentry/props/ion_photon/ion"] = "sentry/sleepy_police/ion_black",
                        },
                 
                  },
                   {
                     Inherit = "@front2",
                     Component = "photon_whe_ion",
                  	Position = Vector( 28, -128.6, 38.3 ),
						Angles = Angle( -.3, 180, 0 ),
						Scale = .84,
                         SubMaterials = {
                            ["sentry/props/ion_photon/ion_glass"] = "sentry/sleepy_police/ion_glass_black",
                            ["sentry/props/ion_photon/ion"] = "sentry/sleepy_police/ion_black",
                        },
                 
                  },
                  {
                     Inherit = "@front1",
                     Component = "photon_whe_ion",
                  	Position = Vector( -18, -128.6, 38.3 ),
						Angles = Angle( .6, 180, 0 ),
						Scale = .84,
                         SubMaterials = {
                            ["sentry/props/ion_photon/ion_glass"] = "sentry/sleepy_police/ion_glass_black",
                            ["sentry/props/ion_photon/ion"] = "sentry/sleepy_police/ion_black",
                        },
                  },
                  {
                     Inherit = "@front1",
                     Component = "photon_whe_ion",
                  	Position = Vector( -28, -128.6, 38.3 ),
						Angles = Angle( .6, 180, 0 ),
						Scale = .84,
                         SubMaterials = {
                            ["sentry/props/ion_photon/ion_glass"] = "sentry/sleepy_police/ion_glass_black",
                            ["sentry/props/ion_photon/ion"] = "sentry/sleepy_police/ion_black",
                        },
                  },
                 
                 
              }
           },
             {
              Option = "2, under",
              Components = {
                {
                     Inherit = "@front2",
                     Component = "photon_whe_ion",
                  	Position = Vector( 25, -128.6, 38.3 ),
						Angles = Angle( -.6, 180, 0 ),
						Scale = .84,
                 
                  },
                  {
                     Inherit = "@front1",
                     Component = "photon_whe_ion",
                  	Position = Vector( -25, -128.6, 38.3 ),
						Angles = Angle( .6, 180, 0 ),
						Scale = .84,
                  },
                 
                 
              }
           },
           
        },
      },
       {
        Category = "TA (use bed options)",
        Options = {
           {
              Option = "action flash, window",
              Components = {
                {
						Name = "@TAact",
						Component = "photon_whe_dominator_8",
						Position = Vector( 0, -43, 83.05 ),
						Angles = Angle( 0, 0, 0 ),
						Scale = 1,
                        SubMaterials = {
                            ["sentry/props/dominator/dom_glass"] = "sentry/sleepy_police/dom_glass_black",
                        },
                        RenderGroup = RENDERGROUP_OPAQUE,
						BodyGroups = {
							["Bracket"] = 2,
							["Wires"] = 0,
							},
                            Segments = {
                                  Light = {
                                      FrameDuration = 1/20,
                                      Frames = {
                                          [1] = "[R] 1 3 5 7",
                                          [2] = "[B] 2 4 6 8",
                                      },
                                      Sequences = {
                                          ["CODE3"] = sequence():SetTiming(1/17):TripleFlash(1, 2):Do(2):Add(1,1,1,2,2,2):Do(4),
                                      }
                                  },
                                  TA = {
                                    FrameDuration = 1/8,
                                    Frames = {
                                        [1] = "[A] 1 2 ",
                                        [2] = "[A] 1 2 3 4",
                                        [3] = "[A] 1 2 3 4 5 6",
                                        [4] = "[A] 1 2 3 4 5 6 7 8",
                                        [5] = "[A] 3 4 5 6 7 8",
                                        [6] = "[A] 5 6 7 8",
                                        [7] = "[A] 7 8",
                                        [8] = "[A] 8",
                                        [9] = "[A] 6 8",
                                        [10] = "[A] 4 6 8",
                                        [11] = "[A] 2 4 6 8",
                                        [12] = "[A] 1 2 4 6 8",
                                        [13] = "[A] 1 3 2 4 6 8",
                                        [14] = "[A] 1 3 5 2 4 6 8",
                                        [15] = "[A] 1 3 5 7 2 4 6 8",
                                        [16] = "[A] 1 3 5 7 2 4 6 ",
                                        [17] = "[A] 1 3 5 7 2 4 ",
                                        [18] = "[A] 1 3 5 7 2 ",
                                        [19] = "[A] 1 3 5 7 ",
                                        [20] = "[A] 3 5 7 ",
                                        [21] = "[A] 5 7",
                                        [22] = "[A] 7",
                                        [23] = "[A] 1 3 5 7 2 4 6 8",
                                        
                                    },
                                    Sequences = {
                                        ["right"] = {22,21,20,19,18,17,16,15,14,13,12,10,9,8,0},
                                        ["left"] = {8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,0},
                                        ["cenout"] = {1,1,2,2,3,3,4,4,5,5,6,6,7,7,0},
                                    }
                                },
                               },
                              InputActions = {
                                  ["Emergency.Warning"] = {
                                    ["MODE1"] = { },
                                     ["MODE2"] = { },
                                      ["MODE3"] = { Light = "CODE3",},
                                  },
                                  ["Emergency.Directional"] = {
                                    ["LEFT"] = { TA = "left" },
                                    ["RIGHT"] = { TA = "right" },
                                    ["CENOUT"] = { TA = "cenout" },
                                },
                              },
						
					 }, 
                 
                 
              }
           },
           {
              Option = "tripple flash, window",
              Components = {
                {
						Name = "@TAtf",
						Component = "photon_whe_dominator_8",
						Position = Vector( 0, -43, 83.05 ),
						Angles = Angle( 0, 0, 0 ),
						Scale = 1,
                        SubMaterials = {
                            ["sentry/props/dominator/dom_glass"] = "sentry/sleepy_police/dom_glass_black",
                        },
                        RenderGroup = RENDERGROUP_OPAQUE,
						BodyGroups = {
							["Bracket"] = 2,
							["Wires"] = 0,
							},
                            Segments = {
                                  Light = {
                                      FrameDuration = 1/20,
                                      Frames = {
                                          [1] = "[R] 1 3 5 7",
                                          [2] = "[B] 2 4 6 8",
                                      },
                                      Sequences = {
                                          ["CODE3"] = sequence():SetTiming(1/17):TripleFlash(1, 2),
                                      }
                                  },
                                  TA = {
                                    FrameDuration = 1/8,
                                    Frames = {
                                        [1] = "[A] 1 2 ",
                                        [2] = "[A] 1 2 3 4",
                                        [3] = "[A] 1 2 3 4 5 6",
                                        [4] = "[A] 1 2 3 4 5 6 7 8",
                                        [5] = "[A] 3 4 5 6 7 8",
                                        [6] = "[A] 5 6 7 8",
                                        [7] = "[A] 7 8",
                                        [8] = "[A] 8",
                                        [9] = "[A] 6 8",
                                        [10] = "[A] 4 6 8",
                                        [11] = "[A] 2 4 6 8",
                                        [12] = "[A] 1 2 4 6 8",
                                        [13] = "[A] 1 3 2 4 6 8",
                                        [14] = "[A] 1 3 5 2 4 6 8",
                                        [15] = "[A] 1 3 5 7 2 4 6 8",
                                        [16] = "[A] 1 3 5 7 2 4 6 ",
                                        [17] = "[A] 1 3 5 7 2 4 ",
                                        [18] = "[A] 1 3 5 7 2 ",
                                        [19] = "[A] 1 3 5 7 ",
                                        [20] = "[A] 3 5 7 ",
                                        [21] = "[A] 5 7",
                                        [22] = "[A] 7",
                                        [23] = "[A] 1 3 5 7 2 4 6 8",
                                        
                                    },
                                    Sequences = {
                                        ["right"] = {22,21,20,19,18,17,16,15,14,13,12,10,9,8,0},
                                        ["left"] = {8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,0},
                                        ["cenout"] = {1,1,2,2,3,3,4,4,5,5,6,6,7,7,0},
                                    }
                                },
                               },
                              InputActions = {
                                  ["Emergency.Warning"] = {
                                    ["MODE1"] = { },
                                     ["MODE2"] = { },
                                      ["MODE3"] = { Light = "CODE3",},
                                  },
                                  ["Emergency.Directional"] = {
                                    ["LEFT"] = { TA = "left" },
                                    ["RIGHT"] = { TA = "right" },
                                    ["CENOUT"] = { TA = "cenout" },
                                },
                              },
						
					 }, 
                 
                 
              }
           },
             {
              Option = "action flash, toolbox",
              Components = {
                  {
                        Inherit = "@TAact",
						Component = "photon_whe_dominator_8",
						Position = Vector( 0, -50.1, 75.79 ),
						Angles = Angle( 0, 0, -2 ),
						Scale = 1,
                        SubMaterials = {
                            ["sentry/props/dominator/dom_glass"] = "sentry/props/dominator/dom_glass",
                        },
                        RenderGroup = RENDERGROUP_OPAQUE,
						BodyGroups = {
							["Bracket"] = 1,
							["Wires"] = 1,
							},
						
					 }, 
                 
              }
           },	
           {
              Option = "tripple flash, toolbox",
              Components = {
                 {
                        Inherit = "@TAtf",
						Component = "photon_whe_dominator_8",
						Position = Vector( 0, -50.1, 75.79 ),
						Angles = Angle( 0, 0, -2 ),
						Scale = 1,
                        SubMaterials = {
                            ["sentry/props/dominator/dom_glass"] = "sentry/props/dominator/dom_glass",
                        },
                        RenderGroup = RENDERGROUP_OPAQUE,
						BodyGroups = {
							["Bracket"] = 1,
							["Wires"] = 1,
							},
						
					 }, 
                 
                 
              }
           },
             {
              Option = "action flash, rack",
               Components = {
                 {
                        Inherit = "@TAact",
						Component = "photon_whe_dominator_8",
					    Position = Vector(0, -51.6, 91.5),
					    Angles = Angle( 0, 0, 0 ),
						Scale = 1,
                        SubMaterials = {
                            ["sentry/props/dominator/dom_glass"] = "sentry/props/dominator/dom_glass",
                        },
                        RenderGroup = RENDERGROUP_OPAQUE,
						BodyGroups = {
							["Bracket"] = 1,
							["Wires"] = 1,
							},
						
					 }, 
                 
                 
              }
           },
           {
              Option = "tripple flash, rack",
            Components = {
                 {
                        Inherit = "@TAtf",
						Component = "photon_whe_dominator_8",
					    Position = Vector(0, -51.6, 91.5),
					    Angles = Angle( 0, 0, 0 ),
						Scale = 1,
                        SubMaterials = {
                            ["sentry/props/dominator/dom_glass"] = "sentry/props/dominator/dom_glass",
                        },
                        RenderGroup = RENDERGROUP_OPAQUE,
						BodyGroups = {
							["Bracket"] = 1,
							["Wires"] = 1,
							},
						
					 }, 
                 
                 
              }
           },
            {
              Option = "none",
           },
           
        },
      },
        {
        Category = "bed",
        Options = {
           {
              Option = "nothing",
              Components = {
                 
                 
              }
           },
           {
              Option = "box, silver",
               Props = {
                    {
                        Model = "models/anemolis/props/anemolis_f150toolbox.mdl",
                        Position = Vector( -0.1, -54, 67.5),
						Angles = Angle( 1.7, 90, 0 ),
						Scale = 1.02
                    },
                }
           },
           {
              Option = "box, black",
               Props = {
                    {
                        Model = "models/anemolis/props/anemolis_f150toolbox.mdl",
                        Position = Vector( -0.1, -54, 67.5),
						Angles = Angle( 1.7, 90, 0 ),
						Scale = 1.02
                    },
                }
           },
           {
              Option = "rack",
                BodyGroups = {
					{ BodyGroup = "Bed", Value = 3},
                   
				},
           },
             {
              Option = "rack + box, silver",
              BodyGroups = {
					{ BodyGroup = "Bed", Value = 3},
                   
				},
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
              Option = "rack + box, black",
              BodyGroups = {
					{ BodyGroup = "Bed", Value = 3},
                   
				},
                
             Props = {
                 {
                Model = "models/anemolis/props/anemolis_f150toolbox.mdl",
                Position = Vector( 0, -58, 67.5),
                Angles = Angle( 1.7, 90, 0 ),
                Scale = 1.02
                },
                 
            }
           },
           
        },
      },
       {
        Category = "Antennas",
        Options = {
           
           {
              Option = "v1 (lb)",
               Props = {
             {
						Model = "models/schmal/antenna_lojack.mdl",
						Position = Vector( -4.5, -30, 91.9 ),
						Angles = Angle( -0.5, 0, 0.5 ),
						Scale = 1
					},
					
					{
						Model = "models/schmal/antenna_pod_navigator.mdl",
						Position = Vector( 4.5, -30, 92.25 ),
						Angles = Angle( -2, 90, 0 ),
						Scale = 1
					},
					{
						Model = "models/sentry/antenna.mdl",
						Position = Vector( -0, -0, 91.8 ),
						Angles = Angle( 0, 0, 0 ),
						Scale = 1
					},
					{
						Model = "models/schmal/antenna_absc.mdl",
						Position = Vector( 0, -30, 92.2 ),
						Angles = Angle( 0, 0, 01 ),
						Scale = 1
					},
			
            
				}
           },
           {
              Option = "v2 (slk)",
               Props = {
                {
                    Model = "models/schmal/antenna_pod_navigator.mdl",
                Position = Vector( 0, 1, 73.7),
                    Angles = Angle( 5.5, 90, 0 ),
                    Color = Color( 300, 300, 300 ),
                    Scale = 1
                },
                {
                    Model = "models/schmal/antenna_pod_navigator.mdl",
                    Position = Vector( 0, -107, 56.2 ),
                    Angles = Angle( -4.5, 90, 0 ),
                    Color = Color( 300, 300, 300 ),
                    Scale = 1
                },
                {
                    Model = "models/schmal/antenna_pod_trimode.mdl",
                    Position = Vector( 0, -45, 72.58 ),
                    Angles = Angle( -7.6, 90, 0 ),
                    Color = Color( 32, 32, 32 ),
                    Scale = 0.5
                },
                {
                    Model = "models/schmal/antennas/antenna_5.mdl",
                    Position = Vector( 0, -35, 78.6 ),
                    Angles = Angle( -0, 0, 04 ),
                    Scale = 1
                },
			
            
				}
           },
            {
              Option = "v3 (slk)",
               Props = {
                 {
						Model = "models/anemolis/props/antennas/anemolis_antenna3.mdl",
						Position = Vector(-4.5, 010, 91.89 ),
						Angles = Angle( -0.5, 0, 0.5 ),
						Scale = 1
					},
					
					{
						Model = "models/schmal/antenna_pod_navigator.mdl",
						Position = Vector(13.5, 035, 89.8 ),
						Angles = Angle( 11, 90, 0  ),
                      	Color = Color( 32, 32, 32 ),
						Scale = 0.7
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
                     {
					Component = "siren_prototype",
					Position = Vector(0, 0, 0),
					Angles = Angle(0, 0, 0),
					Scale = 0,
					Siren = 1
				 },
                },
                 Props = {
					{
						-- Adds realistic window tinting and is skinnable
						Model = "models/schmal/smf15018_glass.mdl",
						Position = Vector( 0, 0, 0 ),
						Angles = Angle( 0, 180, 0 ),
						Scale = 1,
					}
				},
				SubMaterials = {
					{ Id = 23, Material = "photon/common/blank" },
				},

			}
		}
	},
}