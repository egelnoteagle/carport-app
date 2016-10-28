Mileage.create!([
  {vehicle_id: 1, mileage_reading: 4567},
  {vehicle_id: 2, mileage_reading: 123445},
  {vehicle_id: 1, mileage_reading: 5000},
  {vehicle_id: 1, mileage_reading: 5555},
  {vehicle_id: 1, mileage_reading: 5560}
])
Service.create!([
  {name: "Antifreeze"},
  {name: "Check Belts"},
  {name: "Check Brake Fluid"},
  {name: "Check Hoses"},
  {name: "Check Power Steering Fluid"},
  {name: "Check Tires"},
  {name: "Check Transmission Fluid"},
  {name: "Check Air Filter"},
  {name: "Change Oil and Filter"},
  {name: "Check All Fluids"},
  {name: "Check Tire Pressure"},
  {name: "Check All Belts and Hoses"},
  {name: "Lubricate Chassis"},
  {name: "Check Engine Air Filter"},
  {name: "Change Wiper Blades"},
  {name: "Replace Automatic Transmission Fluid"},
  {name: "Drain Cooling Systems, Radiator, Engine Block, and All Heater Related Components"},
  {name: "Bleed Brakes to Renew Fluid"},
  {name: "Replace Spark Plugs"},
  {name: "Check and Adjust Pocket-Style Valves"},
  {name: "Replace Serpentine Belt"},
  {name: "Replace Oil in Manual Transmission"},
  {name: "Replace Oil in Automatic Transmission"},
  {name: "Replace Oil in Differentials and Transfer Case"},
  {name: "Replace Timing Belt"}
])
User.create!([
  {first_name: "Derek", last_name: "Egel", user_name: nil, email: "test@test.com", password_digest: "$2a$10$xh9GOSMs65zcsPylo3zWdOUeb7VODCscthw4C7YOS42Xb3Bs6QUqS", address: "1733 W. Irving Park", address_line_2: "#213", city: "Chicago", state: "IL", zip: "60613"}
])
Vehicle.create!([
  {make: "Audi", model: "Q7", year: "2015", trim: "Premium", style: "TDI", color: "Black", vin_num: "YUT6532UH743I87", vehicle_nickname: "Test Car 1", user_id: 1, license_state: "IL", license_number: "H305622"},
  {make: "Hyundai", model: "Santa Fe", year: "2011", trim: "Base", style: "Limited Edition", color: "Black", vin_num: "HDIR565392345TH", vehicle_nickname: "Test 2", user_id: 1, license_state: "IL", license_number: "E45H454"}
])
