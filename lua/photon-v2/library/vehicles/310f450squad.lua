if (Photon2.ReloadVehicleFile()) then return end
local VEHICLE = Photon2.LibraryVehicle()

 
VEHICLE.Title 		= "f450 squad"
 
VEHICLE.Vehicle		= "f550_crew_sgm"
 
VEHICLE.Category 	= "Photon 2: alberta wildfire service"
 
VEHICLE.Author		= "k9, datedgore44, goodmansamm"

local sequence = Photon2.SequenceBuilder.New

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
      
        Options = {
           {
 
              Option = "1",
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
		    {
 
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
      
        Options = {
           {
 
              Option = "1",
              Components = {
                 {
                   
                    Component = "anemolis_fedsig_impx3",
                  	Position = Vector( 16.1, 152, 50.5 ),
                    Angles = Angle( 0, 0, 0 ),
                    Scale = 1,
					Phase = "A:180",
                    
                 },
				  {
                   
                    Component = "anemolis_fedsig_impx3",
                  		Position = Vector( -16.1, 152, 50.5 ),
                    Angles = Angle( 0, 0, 0 ),
                    Scale = 1,
					Phase = "A",
                    
                 },
                 
              }
           },
           
        },
      },
}