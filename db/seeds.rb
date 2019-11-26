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
hors_normes_1 = open("rsz_1rsz_1horsnormes1.jpg")
m1.photos.attach(io: hors_normes_1, filename: 'hors_normes-1.jpg', content_type: 'image/jpg')
hors_normes_2 = open("rsz_1rsz_horsnormes2.jpg")
m1.photos.attach(io: hors_normes_2, filename: 'hors_normes-2.jpg', content_type: 'image/jpg')
hors_normes_3 = open("rsz_1rsz_horsnormes3.jpg")
m1.photos.attach(io: hors_normes_3, filename: 'hors_normes-3.jpg', content_type: 'image/jpg')
m1.save

m2 = Movie.create(title: "Les Misérables", director: "Ly", description: "Stéphane, tout juste arrivé de Cherbourg, intègre la Brigade Anti-Criminalité de Montfermeil, dans le 93. Il va faire la rencontre de ses nouveaux coéquipiers, Chris et Gwada, deux \"Bacqueux\" d’expérience. Il découvre rapidement les tensions entre les différents groupes du quartier.", category: "Policier", duration: "1h42", rating: 4.3)
les_miserables_1 = open("rsz_1rsz_1lesmiserables1.jpg")
m2.photos.attach(io: les_miserables_1, filename: 'les_miserables-1.jpg', content_type: 'image/jpg')
les_miserables_2 = open("rsz_1rsz_lesmiserables2.jpg")
m2.photos.attach(io: les_miserables_2, filename: 'les_miserables-2.jpg', content_type: 'image/jpg')
les_miserables_3 = open("rsz_1rsz_1lesmiserables3.jpg")
m2.photos.attach(io: les_miserables_3, filename: 'les_miserables-3.jpg', content_type: 'image/jpg')
m2.save

s1 = Showtime.create(movie_id: 1, theater_id: 1, empty_seats: 15, price_per_seat: 4)
