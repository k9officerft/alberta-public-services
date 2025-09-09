if (Photon2.ReloadVehicleFile()) then return end
local VEHICLE = Photon2.LibraryVehicle()

-- The readable title of your vehicle
VEHICLE.Title 		= ""
-- The vehicle from which yours is based upon
VEHICLE.Vehicle		= ""
-- The vehicle's spawn category
VEHICLE.Category 	= "Photon 2: alberta..."
-- Your name
VEHICLE.Author		= "k9, datedgore44, goodmansamm"

local sequence = Photon2.SequenceBuilder.New



VEHICLE.Equipment = {
    {
        Category = "primary",
        -- Options are different choices within the Lightbar category. We're starting off 
        -- with just a single option.
        Options = {
           {
              -- This is simply the text that players see. It can say whatever you like.
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