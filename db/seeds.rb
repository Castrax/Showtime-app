# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Showtime.destroy_all
Movie.destroy_all
Theater.destroy_all

u1 = User.create(email: "coco@coco.com", password: "testtest")

t1 = Theater.create(name: "Louxor", address: "Bd de Magenta")

m1 = Movie.create(title: "Hors Normes", director: "Toledano", description: "Lorem ipsum taoifnez zheioghzojrgb jezpigskhnrzjogn pihzeg pihzpkg pihgiphazr giphegpihazr ghzrgiphearg ihgpizrhg aipzrhg zrgpihzr giphzr pigjh apirsgj pzirgj pizrhjg pierhgpikzrhng pishrgpierhg piezrhg piekrh gpizerh gpierjgpijer gj", category: "Drame", duration: "1h45", rating: 4.5)
m2 = Movie.create(title: "La Reine des neiges 2", director: "Chris Buck", description: "Lorem ipsum taoifnez zheioghzojrgb jezpigskhnrzjogn pihzeg pihzpkg pihgiphazr giphegpihazr ghzrgiphearg ihgpizrhg aipzrhg zrgpihzr giphzr pigjh apirsgj pzirgj pizrhjg pierhgpikzrhng pishrgpierhg piezrhg piekrh gpizerh gpierjgpijer gj", category: "Animation", duration: "1h45", rating: 4.9)


s1 = Showtime.new(empty_seats: 15, price_per_seat: 4)
s1.movie = m1
s1.theater = t1
s1.save
s2 = Showtime.new(empty_seats: 25, price_per_seat: 3)
s2.movie = m1
s2.theater = t1
s2.save


s3 = Showtime.new(empty_seats: 15, price_per_seat: 4)
s3.movie = m2
s3.theater = t1
s3.save
s4 = Showtime.new(empty_seats: 25, price_per_seat: 3)
s4.movie = m2
s4.theater = t1
s4.save
