if (Photon2.ReloadVehicleFile()) then return end
local VEHICLE = Photon2.LibraryVehicle()

VEHICLE.Title 		= "2018 f150"

VEHICLE.Vehicle		= "smfordresponder"

VEHICLE.Category 	= "Photon 2: alberta sheriffs"

VEHICLE.Author		= "k9, datedgore44, goodmansamm"

local sequence = Photon2.SequenceBuilder.New



VEHICLE.Equipment = {
    {
        Category = "primary",
        Options = {
           {
              Option = "lightbar",
              Components = {
                 {
                   
                    Component = "photon_whe_legacy_48",
                    Position = Vector( 0, -18, 75.7 ),
                    Angles = Angle( .3, 90, 0 ),
                    Scale = 1,
                    Bones = {
                        ["clamp_norm_left"] = {  Vector(0.6, -0, -.30), Angle(5.6, -0.9, 0), 1 },
                        ["clamp_norm_right"] = { Vector(-0.6, -0, -.30), Angle(-5.6, 0.9, 0), 1 },
                        ["foot_norm_left"] = {  Vector(-0.8, 0, 0), Angle(7, 0, 0), 1 },
                        ["foot_norm_right"] = { Vector(0.8, 0, 0), Angle(-7, 0, 0), 1 },
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