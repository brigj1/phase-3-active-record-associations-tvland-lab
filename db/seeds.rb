Actor.delete_all
Character.delete_all
Network.delete_all
Show.delete_all

puts "Creating Actors..."
molly = Actor.create(first_name: 'Molly', last_name: 'Brown')
ted = Actor.create(first_name: 'Ted', last_name: 'Danson')
#hotline_bling = Song.create(name: 'Hotline Bling')
#thriller = Song.create(name: 'Thriller')

puts "Creating Networks..."
nbc = Network.create(call_letters: 'WNBC', channel: 5)
cbs = Network.create(call_letters: 'WCBS', channel: 9)
#rap = Genre.create(name: 'Rap')
#pop = Genre.create(name: 'Pop')

puts "Creating Shows..."
cheers = Show.create(name: 'Cheers', day: "T", season: "Spring", genre: "Comedy", network_id: nbc.id)
sixty = Show.create(name: '60 Minutes', day: "Sunday", season: "Fall", genre: "News", network_id: cbs.id)

puts "Creating Characters..."
sam = Character.create(name: 'Sam', catchphrase: "What's up?", actor_id: ted.id, show_id: cheers.id)
mary = Character.create(name: 'Mary Tilly', catchphrase: "Of all the guys...", actor_id: molly.id, show_id: cheers.id)
#drake = Artist.create(name: 'Drake')
#mj = Artist.create(name: 'Michael Jackson')


ted.characters << sam
molly.characters << mary

#hotline_bling.artist = drake
#thriller.artist = mj

#drake.songs << hotline_bling
#mj.songs << thriller

#pop.songs << thriller
#rap.songs << hotline_bling
