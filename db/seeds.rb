Season.destroy_all
Sport.destroy_all
Athlete.destroy_all
Team.destroy_all

fall_spring_seasons = ["2015", "2016", "2017", "2018", "2019", "2020", "2021"]
winter_seasons = ["2015-2016", "2016-2017", "2017-2018", "2019-2020", "2020-2021"]

fall_spring_sports = [["Baseball", "M"], ["Football", "M"], ["Golf", "M"], ["Lacrosse", "M"], ["Soccer", "M"], ["Tennis", "M"], ["Field Hockey", "W"], ["Golf", "W"], ["Lacrosse", "W"], ["Rowing", "W"], ["Soccer", "W"], ["Softball", "W"], ["Tennis", "W"], ["Volleyball", "W"]]
winter_sports = [["Basketball", "M"], ["Track & Field", "M"], ["Wrestling", "M"], ["Basketball", "W"], ["Track & Field", "W"]]

fall_spring_seasons.each do |year|
  season = Season.create(name: year)
  fall_spring_sports.each do |sport_info|
    sport = Sport.create(name: sport_info[0], gender: sport_info[1])
    Team.create(season: season, sport: sport)
  end
end

winter_seasons.each do |year|
  season = Season.create(name: year)
  winter_sports.each do |sport_info|
    sport = Sport.create(name: sport_info[0], gender: sport_info[1])
    Team.create(season: season, sport: sport)
  end
end

# s2019 = Season.find_by(name: "2019")
# baseball = Sport.find_by(name: "Baseball", gender: "M")
bsb2019 = Team.find_by(season: Season.find_by(name: "2019"), sport: Sport.find_by(name: "Baseball", gender: "M"))
bb2019 = Team.find_by(season: Season.find_by(name: "2019-2020"), sport: Sport.find_by(name: "Basketball", gender: "M"))
fb2019 = Team.find_by(season: Season.find_by(name: "2019-2020"), sport: Sport.find_by(name: "Football", gender: "M"))
sw2019 = Team.find_by(season: Season.find_by(name: "2019"), sport: Sport.find_by(name: "Soccer", gender: "W"))
vb2019 = Team.find_by(season: Season.find_by(name: "2019"), sport: Sport.find_by(name: "Volleyball", gender: "W"))
bb2018 = Team.find_by(season: Season.find_by(name: "2018-2019"), sport: Sport.find_by(name: "Basketball", gender: "M"))

Athlete.create(team: bsb2019, firstname: "Aaron", lastname: "Sabato", birthdate: "June 4, 1999", number: "19", year: "Jr", height: "6-2", weight: 230, city: "Rye Brook", state: "NY", high_school: "Brunswick School", ig_handle: "aaron_sabato14", biography: "He was born as a child...")
Athlete.create(team: bb2019, firstname: "Garrison", lastname: "Brooks", birthdate: "June 29, 1999", number: "15", year: "Sr", height: "6-9", weight: 235, city: "Lafayette", state: "AL", high_school: "Auburn", ig_handle: "garrison_brooks", biography: "It all started in the beginning...")
Athlete.create(team: sw2019, firstname: "Brianna", lastname: "Pinto", birthdate: "May 5, 2000", number: "8", year: "So", height: "5-5", weight: 125, city: "Durham", state: "NC", high_school: "Jordan", ig_handle: "b.pinto", biography: "And then she learned soccer")
Athlete.create(team: fb2019, firstname: "Dyami", lastname: "Brown", birthdate: "November 1, 1999" , number: "2", year: "Jr", height: "6-0", weight: 195, city: "Charlotte", state: "NC", high_school: "West Mecklenberg", ig_handle: "_dyamibrown", biography: "Charlotte is home...")
Athlete.create(team: vb2019, firstname: "Destiny", lastname: "Cox", birthdate: "March 21, 2000", number: "1", year: "Jr", height: "6-1", weight: 150, city: "Carrboro", state: "NC", high_school: "Chapel Hill", ig_handle: "destinycox", biography: "Her mom was fast...")
Athlete.create(team: bb2019, firstname: "Armando", lastname: "Bacot", birthdate: "March 6, 2000", number: "5", year: "So", height: "6-10", weight: 232, city: "Richmond", state: "VA", high_school: "IMG Academy", ig_handle: "armando", biography: "VA then FL now NC")
Athlete.create(team: bb2018, firstname: "Coby", lastname: "White", birthdate: "February 16, 2000", number: "2", year: "Fr", height: "6-5", weight: 195, city: "Goldsboro", state: "NC", high_school: "Greenfield School", ig_handle: "cobywhite", biography: "The 910 i think...")




# Season.create(name: "2015")
# Season.create(name: "2015-2016")
# Season.create(name: "2016")
# Season.create(name: "2016-2017")
# Season.create(name: "2017")
# Season.create(name: "2017-2018")
# Season.create(name: "2018")
# Season.create(name: "2018-2019")
# s2019 = Season.create(name: "2019")
# Season.create(name: "2019-2020")
# Season.create(name: "2020")
# Season.create(name: "2020-2021")
#
# bbll = Sport.create(name: "Baseball", gender: "Men's")
# bb = Sport.create(name: "Basketball", gender: "Men's")
# fb = Sport.create(name: "Football", gender: "Men's")
# g = Sport.create(name: "Golf", gender: "Men's")
# l = Sport.create(name: "Lacrosse", gender: "Men's")
# s = Sport.create(name: "Soccer", gender: "Men's")
# t = Sport.create(name: "Tennis", gender: "Men's")
# tf = Sport.create(name: "Track & Field", gender: "Men's")
# w = Sport.create(name: "Wrestling", gender: "Men's")
# bbw = Sport.create(name: "Basketball", gender: "Women's")
# fh = Sport.create(name: "Field Hockey", gender: "Women's")
# gw = Sport.create(name: "Golf", gender: "Women's")
# lw = Sport.create(name: "Lacrosse", gender: "Women's")
# r = Sport.create(name: "Rowing", gender: "Women's")
# sw = Sport.create(name: "Soccer", gender: "Women's")
# sb = Sport.create(name: "Softball", gender: "Women's")
# tw = Sport.create(name: "Tennis", gender: "Women's")
# tfw = Sport.create(name: "Track & Field", gender: "Women's")
# v = Sport.create(name: "Volleyball", gender: "Women's")
#
# baseball2019 = Team.create(sport_id: bbll.id, season_id: s2019.id)
#
# Athlete.create(team: baseball2019, firstname: "Aaron", lastname: "Sabato", number: "19", year: "Jr", height: "6-2", weight: 230, city: "Rye Brook", state: "NY", high_school: "Brunswick School", ig_handle: "@aaron_sabato14", biography: "He was born as a child...")
# Athlete.create(team_id: 2, firstname: "Garrison", lastname: "Brooks", number: "15", year: "Sr", height: "6-9", weight: 235, city: "Lafayette", state: "AL", high_school: "Auburn", ig_handle: "@garrison_brooks", biography: "It all started in the beginning...")
# Athlete.create(team_id: 15, firstname: "Brianna", lastname: "Pinto", number: "8", year: "So", height: "5-5", weight: 125, city: "Durham", state: "NC", high_school: "Jordan", ig_handle: "@b.pinto", biography: "And then she learned soccer")
# Athlete.create(team_id: 3, firstname: "Dyami", lastname: "Brown", number: "2", year: "Jr", height: "6-0", weight: 195, city: "Charlotte", state: "NC", high_school: "West Mecklenberg", ig_handle: "@@_dyamibrown", biography: "Charlotte is home...")
# Athlete.create(team_id: 19, firstname: "Destiny", lastname: "Cox", number: "1", year: "Jr", height: "6-1", weight: 150, city: "Carrboro", state: "NC", high_school: "Chapel Hill", ig_handle: "@destinycox", biography: "Her mom was fast...")
# Athlete.create(team_id: 2, firstname: "Armando", lastname: "Bacot", number: "5", year: "So", height: "6-10", weight: 232, city: "Richmond", state: "VA", high_school: "IMG Academy", ig_handle: "@armando", biography: "VA then FL now NC")
#
# User.create(name: "Mark C", email: "noneed@forthis.com", password: "password")
# User.create(name: "Chris Cuomo", email: "chrisc@example.com", password: "password")
# User.create(name: "Andrew Cuomo", email: "andrewc@example.com", password: "password")
