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

m1 = Movie.create(title: "Hors Normes", director: "Toledano", description: "Lorem ipsum taoifnez zheioghzojrgb jezpigskhnrzjogn pihzeg pihzpkg pihgiphazr giphegpihazr ghzrgiphearg ihgpizrhg aipzrhg zrgpihzr giphzr pigjh apirsgj pzirgj pizrhjg pierhgpikzrhng pishrgpierhg piezrhg piekrh gpizerh gpierjgpijer gj", category: "Drame", duration: "1h45", rating: 4.5, almost_finished?: true)

hors_normes_1 = URI.open("https://res.cloudinary.com/ddlesqeup/image/upload/v1574769804/Peq7qpj2jnSUfHBVL1wTiyLF.jpg")
m1.photos.attach(io: hors_normes_1, filename: 'hors_normes-1.jpg', content_type: 'image/jpg')
hors_normes_2 = URI.open("https://res.cloudinary.com/ddlesqeup/image/upload/v1574768528/k7e3xntpf3jpkbdr2wev.jpg")
m1.photos.attach(io: hors_normes_2, filename: 'hors_normes-2.jpg', content_type: 'image/jpg')
hors_normes_3 = URI.open("https://res.cloudinary.com/ddlesqeup/image/upload/v1574766649/eiizplijmkcsb2qbixeo.jpg")
m1.photos.attach(io: hors_normes_3, filename: 'hors_normes-3.jpg', content_type: 'image/jpg')
m1.save

m2 = Movie.create(title: "Les Misérables", director: "Ly", description: "Stéphane, tout juste arrivé de Cherbourg, intègre la Brigade Anti-Criminalité de Montfermeil, dans le 93. Il va faire la rencontre de ses nouveaux coéquipiers, Chris et Gwada, deux \"Bacqueux\" d’expérience. Il découvre rapidement les tensions entre les différents groupes du quartier.", category: "Policier", duration: "1h42", rating: 4.3, almost_finished?: true)

les_miserables_1 = URI.open("https://res.cloudinary.com/ddlesqeup/image/upload/v1574769808/2eah8TSSP7E9Vtt9oVCbdPwZ.jpg")
m2.photos.attach(io: les_miserables_1, filename: 'les_miserables-1.jpg', content_type: 'image/jpg')
les_miserables_2 = URI.open("https://res.cloudinary.com/ddlesqeup/image/upload/v1574769806/k7f84JmviBRVAvPtP6kLU7SQ.jpg")
m2.photos.attach(io: les_miserables_2, filename: 'les_miserables-2.jpg', content_type: 'image/jpg')
les_miserables_3 = URI.open("https://res.cloudinary.com/ddlesqeup/image/upload/v1574769805/s9Qo345ksNvQEMcVuEMEDMDZ.jpg")
m2.photos.attach(io: les_miserables_3, filename: 'les_miserables-3.jpg', content_type: 'image/jpg')
m2.save

m3 = Movie.create(title: "La Reine des neiges 2", director: "Chris Buck", description: "Lorem ipsum taoifnez zheioghzojrgb jezpigskhnrzjogn pihzeg pihzpkg pihgiphazr giphegpihazr ghzrgiphearg ihgpizrhg aipzrhg zrgpihzr giphzr pigjh apirsgj pzirgj pizrhjg pierhgpikzrhng pishrgpierhg piezrhg piekrh gpizerh gpierjgpijer gj", category: "Animation", duration: "1h45", rating: 4.9)


m4 = Movie.create(title: "Le Roi Lion", director: "Chris Buck", description: "Lorem ipsum taoifnez zheioghzojrgb jezpigskhnrzjogn pihzeg pihzpkg pihgiphazr giphegpihazr ghzrgiphearg ihgpizrhg aipzrhg zrgpihzr giphzr pigjh apirsgj pzirgj pizrhjg pierhgpikzrhng pishrgpierhg piezrhg piekrh gpizerh gpierjgpijer gj", category: "Animation", duration: "1h50", rating: 5)
roi_lion_1 = URI.open("https://res.cloudinary.com/ddlesqeup/image/upload/v1574860505/images_pe8e7l.jpg")
m4.photos.attach(io: roi_lion_1, filename: 'images_pe8e7l.jpg', content_type: 'image/jpg')

s1 = Showtime.new(empty_seats: 15, price_per_seat: 4, start_hour: DateTime.new(2019,12,06,20,37,48))

s1.movie = m1
s1.theater = t1
s1.save

s2 = Showtime.new(empty_seats: 25, price_per_seat: 3, start_hour: DateTime.new(2019,12,06,20,37,48))
s2.movie = m1
s2.theater = t1
s2.save

s3 = Showtime.new(empty_seats: 17, price_per_seat: 4, start_hour: DateTime.new(2019,12,06,20,37,48))
s3.movie = m2
s3.theater = t1
s3.save

s4 = Showtime.new(empty_seats: 37, price_per_seat: 3, start_hour: DateTime.new(2019,12,06,20,37,48))
s4.movie = m2
s4.theater = t1
s4.save

s5 = Showtime.new(empty_seats: 25, price_per_seat: 3)
s5.movie = m4
s5.theater = t1
s5.save

s6 = Showtime.new(empty_seats: 25, price_per_seat: 3)
s6.movie = m3
s6.theater = t1
s6.save

puts "C'est bon :)"
