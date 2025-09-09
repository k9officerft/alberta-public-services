if (Photon2.ReloadVehicleFile()) then return end
local VEHICLE = Photon2.LibraryVehicle()

-- The readable title of your vehicle
VEHICLE.Title 		= "f450 rescue"
-- The vehicle from which yours is based upon
VEHICLE.Vehicle		= "f550_rescue_sm"
-- The vehicle's spawn category
VEHICLE.Category 	= "Photon 2: alberta wildfire service"
-- Your name
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
        Category = "Lights",
        -- Options are different choices within the Lightbar category. We're starting off 
        -- with just a single option.
        Options = {
           {
              -- This is simply the text that players see. It can say whatever you like.
              Option = "SoundOff Signal nForce",
              Components = {
                 {
                   
                    Component = "photon_anemolis_tomar_scorpion",
                    Position = Vector( 0, 0, 100 ),
                    Angles = Angle( 0, -90, 0 ),
                    Scale = 1,
                    
                 },
                 
              }
           },
           
        },
      },
      
}