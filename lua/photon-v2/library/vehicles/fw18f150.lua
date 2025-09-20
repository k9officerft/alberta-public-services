if (Photon2.ReloadVehicleFile()) then return end
local VEHICLE = Photon2.LibraryVehicle()

VEHICLE.Title 		= "18 f150"

VEHICLE.Vehicle		= "smfordresponder"

VEHICLE.Category 	= "Photon 2: alberta fish and wildlife"

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
	["Towbar"] = 0,
	["Responder Badge"] = 0,
	["Pushbar"] = 0,
}



VEHICLE.Equipment = {
    {
        Category = "lightbar",
        Options = {
			 {
              Option = "legend",
              Components = {
                 {
                   
                    Component = "photon_fedsig_legend",
                    Position = Vector( 0, -47.5, 95 ),
                    Angles = Angle( 0, 90, 0 ),
               		Scale = 1,
                  	BodyGroups = {
									 ["feet"] = 2,
						},
					SubMaterials = {
							[5] = "schmal/photon/fedsig_legend/lens",
							[6] = "schmal/photon/fedsig_legend/lens",
						},
						
						  InputActions = {
					   ["Emergency.Warning"] = {
						   ["MODE1"] = { },
					  	   ["MODE2"] = { },
						   ["MODE3"] = { },
						   
					},
				}
                    
                 },
                 
              },
			  Props = {
					
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
           },
           {
              Option = "legacy 54",
              Components = {
                 {
                   
                    Component = "photon_whe_legacy_54",
                    Position = Vector( 0, -47.5, 93.5 ),
                    Angles = Angle( 0, 90, 0 ),
                    Scale = 1,
                    BodyGroups = {
						["Feet"] = 2,
                        ["Clamps"] = 2,
						["Cable"] = 1,
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
		   {
              Option = "legend",
              Components = {
                 {
                   
                    Component = "photon_fedsig_legend",
                    Position = Vector( 0, -47.5, 95 ),
                    Angles = Angle( 0, 90, 0 ),
               		Scale = 1,
                  	BodyGroups = {
									 ["feet"] = 2,
						},
					SubMaterials = {
							[5] = "schmal/photon/fedsig_legend/lens",
							[6] = "schmal/photon/fedsig_legend/lens",
						},
                    
                 },
                 
              },
			  Props = {
					
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
           },
		   {
              Option = "integrety",
              Components = {
                 {
                   
                    Component = "photon_whe_legacy_54",
                    Position = Vector( 0, -47.5, 93.5 ),
                    Angles = Angle( 0, 90, 0 ),
                    Scale = 1,
                    BodyGroups = {
						["Feet"] = 2,
                        ["Clamps"] = 2,
						["Cable"] = 1,
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
        Category = "pushbar + mirrors",
        Options = {
           {
              Option = "tir3",
              Components = {
                  {
                   
                  Component = "anemolis_whelen_tir3",
                  Position = Vector( -10, 133.7, 52.5),
                  Angles = Angle( 00, 0, 02 ),
                  Scale = 0.8,
                    Segments = {
                        Light = {
                            Frames = {
                                [1] = "[R] 1 ",
                                [2] = "[A] 1",

                                
                            },
                            Sequences = {
                                ["CODE3"] = sequence():FlashHold( 1, 2, 3 ):AppendPhaseGap(),
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
                   
                Component = "anemolis_whelen_tir3",
                Position = Vector( 10, 133.7, 52.5),
                Angles = Angle( 00, 0, 02 ),
                Scale = 0.8,
					Phase = 180,
                    Segments = {
                        Light = {
                            Frames = {
                                [1] = "[B] 1 ",
                                [2] = "[A] 1",

                                
                            },
                            Sequences = {
                                ["CODE3"] = sequence():FlashHold( 1, 2, 3 ):AppendPhaseGap(),
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
                   
                Component = "anemolis_whelen_tir3",
                Position = Vector( -55, 56.99, 64.7 ),
                Angles = Angle(2, 19.6, 0 ),
                Scale = 0.8,
                    Segments = {
                        Light = {
                            Frames = {
                                [1] = "[R] 1 ",
                                [2] = "[A] 1",

                                
                            },
                            Sequences = {
                                ["CODE3"] = sequence():FlashHold( 1, 2, 3 ):AppendPhaseGap(),
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
                   
                Component = "anemolis_whelen_tir3",
                Position = Vector( 55, 56.99, 64.7 ),
                Angles = Angle(-2, -19.6, 0 ),
				Phase = 180,
                  Scale = 0.8,
                    Segments = {
                        Light = {
                            Frames = {
                                [1] = "[B] 1 ",
                                [2] = "[A] 1",

                                
                            },
                            Sequences = {
                                ["CODE3"] = sequence():FlashHold( 1, 2, 3 ):AppendPhaseGap(),
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
                 
              }
           },
		   {
              Option = "nforce surface mounts + intersectors",
              Components = {
                 {
                   
                    Component = "photon_whe_legacy_54",
                    Position = Vector( 0, -47.5, 93.5 ),
                    Angles = Angle( 0, 90, 0 ),
                    Scale = 1,
                      BodyGroups = {
									 ["Feet"] = 2,
                           ["Clamps"] = 2,
						},
                    
                 },
                 
              }
           },
		   {
              Option = "impaxx",
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

                                
                            },
                            Sequences = {
                                ["CODE3"] = sequence():SetTiming(1/30):FlashHold(1, 3, 5):FlashHold(0, 3, 5)
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
                   
                    Component = "anemolis_fedsig_impx3",
                    Position = Vector( 12, 133.58, 52.),
                    Angles = Angle( 00, 0, 02 ),
                    Scale = 1,
                    Segments = {
                        Light = {
                            Frames = {
                                [1] = "[B] 1 ",

                                
                            },
                            Sequences = {
                                ["CODE3"] = sequence():SetTiming(1/30):FlashHold(0, 3, 5):FlashHold(1, 3, 5),
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
                   
                Component = "anemolis_fedsig_impx3",
                Position = Vector( 55, 56.78, 64.7 ),
                Angles = Angle(-2, -19.6, 1 ),
                  Scale = 1,
                     Segments = {
                        Light = {
                            Frames = {
                                [1] = "[B] 1 ",

                                
                            },
                            Sequences = {
                                ["CODE3"] = sequence():SetTiming(1/30):FlashHold(0, 3, 5):FlashHold(1, 3, 5),
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
                   
                    Component = "anemolis_fedsig_impx3",
                    Position = Vector( -55, 56.78, 64.7 ),
                    Angles = Angle(2, 19.6, 1 ),
                    Scale = 1,
                    Segments = {
                        Light = {
                            Frames = {
                                [1] = "[R] 1 ",

                                
                            },
                            Sequences = {
                                ["CODE3"] = sequence():SetTiming(1/30):FlashHold(1, 3, 5):FlashHold(0, 3, 5)
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
                 
              }
           },
           
        },
      },
	   {
        Category = "tailgate",
		
        Options = {
			
           {
              Option = "vertex",
              Components = {
                  {
                    Component = "anemolis_whelen_vertex",
                    Position = Vector( -40, -130.9, 41.5 ),
                    Angles = Angle( 0, 163., -100 ),
                    RenderGroup = RENDERGROUP_OPAQUE,
                    Segments = {
                           Light = {
                               FrameDuration = 1/20,
                               Frames = {
                                   [1] = "[R] 1 2",
                               },
                               Sequences = {
                                     ["CODE3"] = sequence():FlashHold( 1, 2, 3 ):AppendPhaseGap(),
                               }
                           },
                        },
                       InputActions = {
                           ["Emergency.Warning"] = {
                               ["MODE1"] = {},
                               ["MODE2"] = { Light = "CODE3",},
                               ["MODE3"] = { Light = "CODE3",},
                           },
                          
                       },
                    
                 }, 
                {
                    Component = "anemolis_whelen_vertex",
                    Position = Vector( 40, -130.9, 41.5 ),
                    Angles = Angle( 0, 197, -100 ),
					Phase = 180,
                    RenderGroup = RENDERGROUP_OPAQUE,
                    Segments = {
                           Light = {
                               FrameDuration = 1/20,
                               Frames = {
                                   [1] = "[B] 1 2",
                               },
                               Sequences = {
                                    ["CODE3"] = sequence():FlashHold( 1, 2, 3 ):AppendPhaseGap(),
                               }
                           },
                        },
                       InputActions = {
                           ["Emergency.Warning"] = {
                               ["MODE1"] = {},
                               ["MODE2"] = { Light = "CODE3",},
                               ["MODE3"] = { Light = "CODE3",},
                           },
                          
                       },
                    
                 }, 
                 
              }
           },
		   {
              Option = "sos undercovers",
              Components = {
                 {
                    Component = "photon_sos_undercover",
                    Position = Vector( -40, -130.7, 41.5 ),
                    Angles = Angle( 0, 163., -99 ),
					Scale = .3,
                    RenderGroup = RENDERGROUP_OPAQUE,
                    Segments = {
                           Light = {
                               FrameDuration = 1/20,
                               Frames = {
                                   [1] = "[R] 1 2 3 ",
                               },
                               Sequences = {
                                     ["CODE3"] = sequence():FlashHold( 1, 2, 3 ):AppendPhaseGap(),
                               }
                           },
                        },
                       InputActions = {
                           ["Emergency.Warning"] = {
                               ["MODE1"] = {},
                               ["MODE2"] = { Light = "CODE3",},
                               ["MODE3"] = { Light = "CODE3",},
                           },
                          
                       },
                    
                 }, 
                {
                    Component = "photon_sos_undercover",
                    Position = Vector( 40, -130.7, 41.5 ),
                    Angles = Angle( 0, 197, -99 ),
					Scale = .3,
					Phase = 180,
                    RenderGroup = RENDERGROUP_OPAQUE,
                    Segments = {
                           Light = {
                               FrameDuration = 1/20,
                               Frames = {
                                   [1] = "[B] 1 2 3 ",
                               },
                               Sequences = {
                                    ["CODE3"] = sequence():FlashHold( 1, 2, 3 ):AppendPhaseGap(),
                               }
                           },
                        },
                       InputActions = {
                           ["Emergency.Warning"] = {
                               ["MODE1"] = {},
                               ["MODE2"] = { Light = "CODE3",},
                               ["MODE3"] = { Light = "CODE3",},
                           },
                          
                       },
                    
                 }, 
                 
              }
           },
		   {
              Option = "None",
              Components = {
                 
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
            
             
         
				}
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
                Scale = 1.02
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
						Model = "models/kali/props/cases/hard case c.mdl",
					Position = Vector( 0, -80, 42.5),
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
          {
				Option = "toolbox 2 + misc + cages",
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
				Option = "toolbox 2 + misc + cages",
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
				Option = "cages + misc",
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
				Option = "large animal cage",
				Props = {
					
              {
                Model = "models/anemolis/props/anemolis_f150toolbox.mdl",
                Position = Vector( 0, -58, 67.5),
                Angles = Angle( 1.7, 90, 0 ),
                Scale = 1.02
            },
         
				}
			},
		}
	},
}