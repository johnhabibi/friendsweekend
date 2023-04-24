# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).

# The party doesn't officially start until the last person gets there
event_dates = EventDate.create(date: "2023-06-03 18:45:00", location: "Camp Hill, Pennsylvania")
travel_iteneraries = TravelItenerary.create(traveler: "John Habibi", provider: "Southwest Airlines", departure: "2023-06-03 07:00:00", arrival: "2023-06-03 11:10:00", identifier: "360", arrival_code: "PHL")