if (Photon2.ReloadVehicleFile()) then return end
local VEHICLE = Photon2.LibraryVehicle()

 
VEHICLE.Title 		= "f450 utility"
 
VEHICLE.Vehicle		= "f550_utility_sm"
 
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
        Category = "Lights",
      
        Options = {
           {
 
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