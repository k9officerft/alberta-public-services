if (Photon2.ReloadVehicleFile()) then return end
local VEHICLE = Photon2.LibraryVehicle()

VEHICLE.Title 		= "18 f150"

VEHICLE.Vehicle		= "smfordresponder"

VEHICLE.Category 	= "Photon 2: alberta conservation"

VEHICLE.Author		= "k9, datedgore44, goodmansamm"

local sequence = Photon2.SequenceBuilder.New

VEHICLE.BodyGroups = {
	["Wheels"] = 3,
	["Grille"] = 0,
   ["Bed"] = 2,
	["Front Bumper"] = 0,
	["Rear Bumper"] = 0,
	["Mirrors"] = 0,
	["Rear Seats"] = 0,
	["Partition"] = 1,
	["Center Console"] = 0,
	["Towbar"] = 0,
	["Responder Badge"] = 0,
	["Pushbar"] = 0,
}



VEHICLE.Equipment = {
    {
        Category = "primary",
        Options = {
           {
              Option = "lightbar",
              Components = {
                 {
                   
                    Component = "photon_whe_legacy_48",
                    Position = Vector( 0, 0, 100 ),
                    Angles = Angle( 0, -90, 0 ),
                    Scale = 1,
                    
                 },
                 
              }
           },
           
        },
      },
}