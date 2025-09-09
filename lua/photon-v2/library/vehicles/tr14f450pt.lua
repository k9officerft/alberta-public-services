if (Photon2.ReloadVehicleFile()) then return end
local VEHICLE = Photon2.LibraryVehicle()

VEHICLE.Title 		= "14 f450 prisoner transport"

VEHICLE.Vehicle		= ""

VEHICLE.Category 	= "Photon 2: alberta sheriffs corrections"

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
                   
                    Component = "thing",
                    Position = Vector( 0, 0, 100 ),
                    Angles = Angle( 0, -90, 0 ),
                    Scale = 1,
                    
                 },
                 
              }
           },
           
        },
      },
}