nyc_travel_plan = {
  hotels: [
    "Hilton Garden Inn",
    "Wyndham Hotel", 
    "Waldorf Astoria" 
  ],
  restaurants: [
    "Jackson Hole",
    "Agave",
    "Refinery"
  ],
  activities: [
    "Statue of Liberty",
    "Ellis Island",
    "Freedom Tower"
  ]
}

nyc_travel_plan[:hotels][2]
nyc_travel_plan[:restaurants][0]
nyc_travel_plan[:activities].push("Empire State Building")
nyc_travel_plan[:hotels][1] = "Top of the Standard"
