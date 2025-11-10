if (Photon2.ReloadVehicleFile()) then return end
local VEHICLE = Photon2.LibraryVehicle()

VEHICLE.Title 		= "2011 cvpi"

VEHICLE.Vehicle		= "cvpi_hd_sgm"

VEHICLE.Category 	= "Photon 2: alberta sheriffs"

VEHICLE.Author		= "k9, datedgore44, goodmansamm"

local sequence = Photon2.SequenceBuilder.New



VEHICLE.Equipment = {
    {
        Category = "primary",
        Options = {
           {
              Option = "liberty v1",
              Components = {
                 {
                   
                    Component = "photon_whe_liberty_48",
                    Position = Vector( 0, -15, 68.7 ),
                    Angles = Angle( 1.5, 90, 0 ),
                    Scale = .85,
                    Bones = {
                        [23] = { Vector( 1, 0, 0 ), Angle( -10, 0, 0 )  },
                        [24] = { Vector( -1, 0, 0 ), Angle( 10, 0, 0 ) },
                        [25] = { Vector( 1, 0, -0.4 ), Angle( -3, 0, 0 )  },
                        [26] = { Vector( -1, 0, -.4 ), Angle( 3, 0, 0 ) },
                    },
                     Segments = {
                        Light = {
                            FrameDuration = 1/20,
                            Frames = {
                                [1] = "[B] 1 3 5 7 9 11 13 15 19 21 23 25 ",
                                [2] = "[R] 2 4 6 8 10 12 14 16 20 22 24 26 ",
                            },
                            Sequences = {
                                ["CODE3"] = sequence():SetTiming(1/17):TripleFlash(1, 2):Do(2):Add(1,1,1,2,2,2):Do(4),
                            }
                        },
                        TDKN = {
                            FrameDuration = 1/20,
                            Frames = {
                                [1] = "[W] 30 18",
                                [2] = "[W] 29 17",
                               
                            },
                            Sequences = {
                                ["CODE3"] = sequence():SetTiming(1/17):TripleFlash(1, 2),
                            }
                        },
                        TA = {
                           FrameDuration = 1/8,
                           Frames = {
                               [1] = "[B] 15 [R] 16 ",
                               [2] = "[B] 13 [R] 14",
                               [3] = "[B] 11 [R] 12",
                               [4] = "[R] 12",
                               [5] = "[R] 14",
                               [6] = "[R] 16",
                               [7] = "[B] 15",
                               [8] = "[B] 13",
                               [9] = "[B] 11",
                             
                               
                           },
                           Sequences = {
                               ["right"] = {9,9,8,8,7,7,6,6,5,5,4,4,0,0,4,4,0,0,4,4,0},
                               ["left"] = {4,4,5,5,6,6,7,7,8,8,9,9,0,0,9,9,0,0,9,9,0},
                               ["cenout"] = {1,1,2,2,3,3,0,0,3,3,0,0,3,3,0},
                           }
                       },
                      },
                     
                    InputActions = {
                        ["Emergency.Warning"] = {
                            ["MODE1"] = {},
                            ["MODE2"] = {},
                            ["MODE3"] = { Light = "CODE3", TDKN = "CODE3"},
                        },
                        ["Emergency.Directional"] = {
                           ["LEFT"] = { TA = "left" },
                           ["RIGHT"] = { TA = "right" },
                           ["CENOUT"] = { TA = "cenout" },
                       },
                    },
                 BodyGroups = {
                    ["front_middle"] = 0,
                   

                }
                 },
                 
              }
           },
           
              {
              Option = "liberty v2",
              Components = {
                 {
                   
                    Component = "photon_whe_liberty_48",
                    Position = Vector( 0, -15, 68.7 ),
                    Angles = Angle( 1.5, 90, 0 ),
                    Scale = .85,
                    Bones = {
                        [23] = { Vector( 1, 0, 0 ), Angle( -10, 0, 0 )  },
                        [24] = { Vector( -1, 0, 0 ), Angle( 10, 0, 0 ) },
                        [25] = { Vector( 1, 0, -0.4 ), Angle( -3, 0, 0 )  },
                        [26] = { Vector( -1, 0, -.4 ), Angle( 3, 0, 0 ) },
                    },
                     Segments = {
                        Light = {
                            FrameDuration = 1/20,
                            Frames = {
                                [1] = "[B] 1 3 5 7 9 11 13 15 19 21 23 25 ",
                                [2] = "[R] 2 4 6 8 10 12 14 16 20 22 24 26 ",
                            },
                            Sequences = {
                                ["CODE3"] = sequence():SetTiming(1/17):TripleFlash(1, 2):Do(2):Add(1,1,1,2,2,2):Do(4),
                            }
                        },
                        TDKN = {
                            FrameDuration = 1/20,
                            Frames = {
                                [1] = "[W] 30 18",
                                [2] = "[W] 29 17",
                               
                            },
                            Sequences = {
                                ["CODE3"] = sequence():SetTiming(1/17):TripleFlash(1, 2),
                            }
                        },
                        TA = {
                           FrameDuration = 1/8,
                           Frames = {
                               [1] = "[B] 15 [R] 16 ",
                               [2] = "[B] 13 [R] 14",
                               [3] = "[B] 11 [R] 12",
                               [4] = "[R] 12",
                               [5] = "[R] 14",
                               [6] = "[R] 16",
                               [7] = "[B] 15",
                               [8] = "[B] 13",
                               [9] = "[B] 11",
                             
                               
                           },
                           Sequences = {
                               ["right"] = {9,9,8,8,7,7,6,6,5,5,4,4,0,0,4,4,0,0,4,4,0},
                               ["left"] = {4,4,5,5,6,6,7,7,8,8,9,9,0,0,9,9,0,0,9,9,0},
                               ["cenout"] = {1,1,2,2,3,3,0,0,3,3,0,0,3,3,0},
                           }
                       },
                      },
                     
                    InputActions = {
                        ["Emergency.Warning"] = {
                            ["MODE1"] = {},
                            ["MODE2"] = {},
                            ["MODE3"] = { Light = "CODE3", TDKN = "CODE3"},
                        },
                        ["Emergency.Directional"] = {
                           ["LEFT"] = { TA = "left" },
                           ["RIGHT"] = { TA = "right" },
                           ["CENOUT"] = { TA = "cenout" },
                       },
                    },
                 BodyGroups = {
                    ["Rear_inner"] = 1,
                }
                 },
                 
              }
           },
        },
      },
      {
        Category = "front",
        Options = {
           {
              Option = "no pushbar",
              Components = {
                 {
                     Name = "@mirror1",
                     Component = "photon_whe_ion_surface",
                     Position = Vector( 47, 30.9, 54 ),
                     Angles = Angle( 0, -24, 00 ),
                     Scale = 0.8
                 
                  },
                  {
                     Inherit = "@mirror1",
                     Component = "photon_whe_ion_surface",
                     Position = Vector( -47, 30.9, 54 ),
                     Angles = Angle( 0, 24, 00 ),
                     Scale = 0.8
                 
                  },
                 
              }
           },
             {
              Option = "pushbar",
              Components = {
                 {
                     Name = "@mirror1",
                     Component = "photon_whe_ion_surface",
                     Position = Vector( 47, 30.9, 54 ),
                     Angles = Angle( 0, -24, 00 ),
                     Scale = 0.8
                 
                  },
                  {
                     Inherit = "@mirror1",
                     Component = "photon_whe_ion_surface",
                     Position = Vector( -47, 30.9, 54 ),
                     Angles = Angle( 0, 24, 00 ),
                     Scale = 0.8
                 
                  },
                 
              }
           },
           
        },
      },
      {
        Category = "rear",
        Options = {
           {
              Option = "ions and inters",
              Components = {
                 {
                     Name = "@mirror1",
                     Component = "photon_whe_ion_surface",
                     Position = Vector( 47, 30.9, 54 ),
                     Angles = Angle( 0, -24, 00 ),
                     Scale = 0.8
                 
                  },
                  {
                     Inherit = "@mirror1",
                     Component = "photon_whe_ion_surface",
                     Position = Vector( -47, 30.9, 54 ),
                     Angles = Angle( 0, 24, 00 ),
                     Scale = 0.8
                 
                  },
                 
              }
           },
           
        },
      },
       {
        Category = "mirrors",
        Options = {
           {
              Option = "ions and inters",
              Components = {
                 {
                     Name = "@mirror1",
                     Component = "photon_whe_ion_surface",
                     Position = Vector( 47, 30.9, 54 ),
                     Angles = Angle( 0, -24, 00 ),
                     Scale = 0.8
                 
                  },
                  {
                     Inherit = "@mirror1",
                     Component = "photon_whe_ion_surface",
                     Position = Vector( -47, 30.9, 54 ),
                     Angles = Angle( 0, 24, 00 ),
                     Scale = 0.8
                 
                  },
                 
              }
           },
           
        },
      },
       {
        Category = "Antennas",
        Options = {
           {
              Option = "v1",
               Props = {
                {
                    Model = "models/w4nou/antenne_antares.mdl",
                Position = Vector( 0, 1, 73),
                    Angles = Angle( 0, 180, 5.5 ),
                    Color = Color( 300, 300, 300 ),
                    Scale = .8
                },

                {
                    Model = "models/schmal/antenna_pod_trimode.mdl",
                    Position = Vector( 0, -45, 72.58 ),
                    Angles = Angle( -7.6, 90, 0 ),
                    Color = Color( 32, 32, 32 ),
                    Scale = 0.5
                },
                {
                    Model = "models/schmal/antenna_absc.mdl",
                    Position = Vector( -5, -35, 73.5 ),
                    Angles = Angle( -0, 01, 04 ),
                    Scale = 1
                },
			
            
				}
           },
           {
              Option = "v2",
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
           
        },
      },
}