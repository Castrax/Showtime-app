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

s1 = Showtime.create(movie_id: 1, theater_id: 1, empty_seats: 15, price_per_seat: 4)
