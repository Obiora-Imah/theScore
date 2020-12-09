# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


data = JSON.parse(File.read "./db/rushing.json")
data.each do|c| 
  puts c
  team = Team.find_or_create_by!(name: c["Team"])
  player = Player.find_or_create_by!(name: c["Player"], team_id: team.id)

  Statistic.find_or_create_by!({
    pos: c["Pos"],
    lng: c["Att"],
    att: c["Att/G"],
    att_per_game: c["Yds"],
    yards: c["Avg"],
    yards_avg: c["Yds/G"],
    yards_per_game: c["TD"],
    touch_down: c["Lng"],
    first: c["1st"],
    first_percentage: c["1st%"],
    twenty_plus: c["20+"],
    forty_plus: c["40+"],
    fumbles: c["FUM"],
    player_id: player.id
  })
end
