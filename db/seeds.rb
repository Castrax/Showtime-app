require 'open-uri'
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Cleaning the DB..."

Order.destroy_all
User.destroy_all
Showtime.destroy_all
Movie.destroy_all
Theater.destroy_all

puts "Creating u1..."

u1 = User.create(email: "coco@coco.com", password: "testtest")

puts "Creating t1..."

t1 = Theater.create(name: "Louxor", address: "Bd de Magenta")
t2 = Theater.create(name: "Majestic Bastille", address: "4 bd de Richard Lenoir")


puts "Creating m1..."

m1 = Movie.create(title: "Hors Normes", director: "Toledano", description: "Lorem ipsum taoifnez zheioghzojrgb jezpigskhnrzjogn pihzeg pihzpkg pihgiphazr giphegpihazr ghzrgiphearg ihgpizrhg aipzrhg zrgpihzr giphzr pigjh apirsgj pzirgj pizrhjg pierhgpikzrhng pishrgpierhg piezrhg piekrh gpizerh gpierjgpijer gj", category: "Drame", duration: "1h45", rating: 4.5, almost_finished?: true)

puts "Creating hors normes photos..."

hn1 = URI.open("https://m.media-amazon.com/images/M/MV5BZTEwMTlkNjAtZTQxZi00YjIwLTkxNmItYzQ4OWZkMzJkMzliXkEyXkFqcGdeQXVyMTMxODk2OTU@._V1_SY1000_CR0,0,737,1000_AL_.jpg")
m1.photos.attach(io: hn1, filename: 'hn1.jpg', content_type: 'image/jpg')
hn2 = URI.open("https://m.media-amazon.com/images/M/MV5BMTkwOGM3YjAtYWUxYS00ZmJjLWI1OGQtYmExNTc0ZjhmMmZmXkEyXkFqcGdeQXVyNTc5OTMwOTQ@._V1_SY1000_CR0,0,1500,1000_AL_.jpg")
m1.photos.attach(io: hn2, filename: 'hn2.jpg', content_type: 'image/jpg')
m1.save

m2 = Movie.create(title: "Les Misérables", director: "Ly", description: "Stéphane, tout juste arrivé de Cherbourg, intègre la Brigade Anti-Criminalité de Montfermeil, dans le 93. Il va faire la rencontre de ses nouveaux coéquipiers, Chris et Gwada, deux \"Bacqueux\" d’expérience. Il découvre rapidement les tensions entre les différents groupes du quartier.", category: "Policier", duration: "1h42", rating: 4.3, almost_finished?: true)

miserables_1 = URI.open("https://m.media-amazon.com/images/M/MV5BZTZkYTBkY2MtMzRmNS00NjM3LWFiMzItZmJjNzNhMjgyYzczXkEyXkFqcGdeQXVyODk4OTc3MTY@._V1_SY1000_CR0,0,677,1000_AL_.jpg")
m2.photos.attach(io: miserables_1, filename: 'les_miserables-1.jpg', content_type: 'image/jpg')
miserables_2 = URI.open("https://m.media-amazon.com/images/M/MV5BMDY0MGE5MzUtNDllMi00MmUxLWI3MTItNWJiMmQ3MzJjMDcxXkEyXkFqcGdeQXVyODIyOTEyMzY@._V1_.jpg")
m2.photos.attach(io: miserables_2, filename: 'les_miserables-2.jpg', content_type: 'image/jpg')
m2.save

m3 = Movie.create(title: "La Reine des neiges 2", director: "Chris Buck", description: "Lorem ipsum taoifnez zheioghzojrgb jezpigskhnrzjogn pihzeg pihzpkg pihgiphazr giphegpihazr ghzrgiphearg ihgpizrhg aipzrhg zrgpihzr giphzr pigjh apirsgj pzirgj pizrhjg pierhgpikzrhng pishrgpierhg piezrhg piekrh gpizerh gpierjgpijer gj", category: "Animation", duration: "1h45", rating: 4.9)
frozen1 = URI.open("https://m.media-amazon.com/images/M/MV5BMjA0YjYyZGMtN2U0Ni00YmY4LWJkZTItYTMyMjY3NGYyMTJkXkEyXkFqcGdeQXVyNDg4NjY5OTQ@._V1_SY1000_SX675_AL_.jpg")
m3.photos.attach(io: frozen1, filename: 'frozen1.jpg', content_type: 'image/jpg')



m4 = Movie.create(title: "Le Roi Lion", director: "Chris Buck", description: "Lorem ipsum taoifnez zheioghzojrgb jezpigskhnrzjogn pihzeg pihzpkg pihgiphazr giphegpihazr ghzrgiphearg ihgpizrhg aipzrhg zrgpihzr giphzr pigjh apirsgj pzirgj pizrhjg pierhgpikzrhng pishrgpierhg piezrhg piekrh gpizerh gpierjgpijer gj", category: "Animation", duration: "1h50", rating: 5)
rl1 = URI.open("https://m.media-amazon.com/images/M/MV5BZTQ4ZDhmOTMtN2EzZi00ZjhjLTkxMmMtYTFiODNiYzEwZTc3XkEyXkFqcGdeQXVyODUzMjQxMTA@._V1_SY1000_CR0,0,666,1000_AL_.jpg")
m4.photos.attach(io: rl1, filename: 'images_pe8e7l.jpg', content_type: 'image/jpg')


s1 = Showtime.new(empty_seats: 15, price_cents: 400, sku: "12345A", start_hour: DateTime.new(2019,12,06,12,00,00), end_hour: DateTime.new(2019,12,06,13,47,00))
s1.movie = m1
s1.theater = t1
s1.save

s2 = Showtime.new(empty_seats: 25, price_cents: 300, sku: "12345B", start_hour: DateTime.new(2019,12,06,14,00,00), end_hour: DateTime.new(2019,12,06,15,47,00))
s2.movie = m1
s2.theater = t2
s2.save

s3 = Showtime.new(empty_seats: 17, price_cents: 400, sku: "12345C", start_hour: DateTime.new(2019,12,06,15,00,00), end_hour: DateTime.new(2019,12,06,16,47,00))
s3.movie = m2
s3.theater = t1
s3.save

s4 = Showtime.new(empty_seats: 37, price_cents: 300, sku: "12345D", start_hour: DateTime.new(2019,12,06,16,00,00), end_hour: DateTime.new(2019,12,06,17,47,00))
s4.movie = m2
s4.theater = t2
s4.save


s5 = Showtime.new(empty_seats: 25, price_cents: 300, sku: "12345E", start_hour: DateTime.new(2019,12,06,17,00,00), end_hour: DateTime.new(2019,12,06,18,47,00))
s5.movie = m4
s5.theater = t1
s5.save

s6 = Showtime.new(empty_seats: 25, price_cents: 300, sku: "12345F", start_hour: DateTime.new(2019,12,06,18,00,00), end_hour: DateTime.new(2019,12,06,19,47,00))
s6.movie = m3
s6.theater = t1
s6.save

puts "C'est bon :)"
