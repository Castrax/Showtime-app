
# keyword = "Brooklyn Affairs"
# url = "https://api.themoviedb.org/3/search/movie?api_key=29a362d339e7c52809de913c6163096a&query=#{keyword}&language=fr-FR"
# movie_serialized = open(url).read
# movie = JSON.parse(movie_serialized)

# require 'json'
# require 'open-uri'
# keyword = "Chanson douce"
# url = "https://api.themoviedb.org/3/search/movie?api_key=29a362d339e7c52809de913c6163096a&query=#{keyword}&language=fr-FR"
# movie_serialized = open(url).read
# movie1 = JSON.parse(movie_serialized)
# movie1_char = movie1["results"].first
# poster_path1 = movie["results"].first["poster_path"]
# photo_url1 = "http://image.tmdb.org/t/p/w300/#{poster_path}"

# keyword = "chanson douce"
# url = URI("https://api.themoviedb.org/3/search/movie?include_adult=false&query=#{keyword}&language=fr-FR&api_key=29a362d339e7c52809de913c6163096a")
# http = Net::HTTP.new(url.host, url.port)
# http.use_ssl = true
# http.verify_mode = OpenSSL::SSL::VERIFY_NONE
# request = Net::HTTP::Get.new(url)
# request.body = "{}"
# response = http.request(request)
# p response.read_body["results"].first

#test


puts "Cleaning the DB..."

Order.destroy_all
User.destroy_all
Showtime.destroy_all
Movie.destroy_all
Theater.destroy_all

puts "Creating u1..."

u1 = User.create(email: "coco@coco.com", password: "testtest")

# THEATERS
puts "Creating t1..."

t1 = Theater.create(name: "Louxor", address: "Bd de Magenta")
louxor = URI.open("https://upload.wikimedia.org/wikipedia/commons/4/42/P1320950_Paris_X_Louxor_rwk.jpg")
t1.photo.attach(io: louxor, filename: 'louxor.jpg', content_type: 'image/jpg')
t1.save

puts "Creating t2..."

t2 = Theater.create(name: "Majestic Bastille", address: "4 Boulevard Richard Lenoir, 75011 Paris")
majestic = URI.open("https://projectionniste.net/images/75-majestic-bastille-paris-2.jpg")
t2.photo.attach(io: majestic, filename: 'majestic.jpg', content_type: 'image/jpg')
t2.save

puts "Creating t3..."

t3 = Theater.create(name: "Mk2 Quai de Loire", address: "7 Quai de la Loire, 75019 Paris")
loire = URI.open("https://www.paristribu.com/visuelEtbs/mk2-quai-de-loire.jpg")
t3.photo.attach(io: loire, filename: 'loire.jpg', content_type: 'image/jpg')
t3.save

puts "Creating t4..."

t4 = Theater.create(name: "Mk2 Quai de Seine", address: "14 Quai de Seine, 75019 Paris")
seine = URI.open("https://www.parisinfo.com/var/otcp/sites/images/node_43/node_51/node_77884/node_77888/mk2-quai-de-seine-vue-de-face-%7C-630x405-%7C-%C2%A9-david-mcspadden/13227102-1-fre-FR/MK2-Quai-de-Seine-Vue-de-face-%7C-630x405-%7C-%C2%A9-David-McSpadden.jpg")
t4.photo.attach(io: seine, filename: 'seine.jpg', content_type: 'image/jpg')
t4.save



# MOVIES

puts "Creating HORS NORMES..."

m1 = Movie.create(title: "Hors Normes", director: "Eric Toledano et Olivier Nakache", cast: "Vincent Cassel, Reda Kateb, Hélène Vincent", description: "Bruno et Malik vivent depuis 20 ans dans un monde à part, celui des enfants et adolescents autistes. Au sein de leurs deux associations respectives, ils forment des jeunes issus des quartiers difficiles pour encadrer ces cas complexes.", category: "Comédie", duration: "1h55", rating: 4.5, almost_finished?: true)

hn1 = URI.open("https://m.media-amazon.com/images/M/MV5BZTEwMTlkNjAtZTQxZi00YjIwLTkxNmItYzQ4OWZkMzJkMzliXkEyXkFqcGdeQXVyMTMxODk2OTU@._V1_SY1000_CR0,0,737,1000_AL_.jpg")
m1.photos.attach(io: hn1, filename: 'hn1.jpg', content_type: 'image/jpg')
hn2 = URI.open("https://m.media-amazon.com/images/M/MV5BMTkwOGM3YjAtYWUxYS00ZmJjLWI1OGQtYmExNTc0ZjhmMmZmXkEyXkFqcGdeQXVyNTc5OTMwOTQ@._V1_SY1000_CR0,0,1500,1000_AL_.jpg")
m1.photos.attach(io: hn2, filename: 'hn2.jpg', content_type: 'image/jpg')
m1.save

puts "Creating LES MISERABLES..."

m2 = Movie.create(title: "Les Misérables", director: "Ladj Ly", cast: "Damien Bonnard, Alexis Manenti, Djibril Zonga", description: "Stéphane, tout juste arrivé de Cherbourg, intègre la Brigade Anti-Criminalité de Montfermeil, dans le 93. Il va faire la rencontre de ses nouveaux coéquipiers, Chris et Gwada.", category: "Policier", duration: "1h42", rating: 4.1, almost_finished?: true)

miserables_1 = URI.open("https://m.media-amazon.com/images/M/MV5BZTZkYTBkY2MtMzRmNS00NjM3LWFiMzItZmJjNzNhMjgyYzczXkEyXkFqcGdeQXVyODk4OTc3MTY@._V1_SY1000_CR0,0,677,1000_AL_.jpg")
m2.photos.attach(io: miserables_1, filename: 'les_miserables-1.jpg', content_type: 'image/jpg')
miserables_2 = URI.open("https://m.media-amazon.com/images/M/MV5BMDY0MGE5MzUtNDllMi00MmUxLWI3MTItNWJiMmQ3MzJjMDcxXkEyXkFqcGdeQXVyODIyOTEyMzY@._V1_.jpg")
m2.photos.attach(io: miserables_2, filename: 'miserables-2.jpg', content_type: 'image/jpg')
m2.save

puts "Creating LA REINE DES NEIGES..."

m3 = Movie.create(title: "La Reine des Neiges 2", director: "Chris Buck", cast: "Kristen Bell, Idina Menzel, Josh Gad", description: "Pourquoi Elsa est-elle née avec des pouvoirs magiques ? La jeune fille rêve de l’apprendre, mais la réponse met son royaume en danger. Avec l’aide d’Anna, Kristoff, Olaf et Sven, Elsa entreprend un voyage aussi périlleux qu’extraordinaire.", category: "Animation", duration: "1h44", rating: 4.0)
frozen1 = URI.open("https://m.media-amazon.com/images/M/MV5BMjA0YjYyZGMtN2U0Ni00YmY4LWJkZTItYTMyMjY3NGYyMTJkXkEyXkFqcGdeQXVyNDg4NjY5OTQ@._V1_SY1000_SX675_AL_.jpg")
m3.photos.attach(io: frozen1, filename: 'frozen1.jpg', content_type: 'image/jpg')
frozen2 = URI.open("https://m.media-amazon.com/images/M/MV5BYTkyYjhhMWUtYWFjOC00YmI0LTg1ZjYtZjc1MDE4ZGZhZWFjXkEyXkFqcGdeQXVyMTkxNjUyNQ@@._V1_SX1777_CR0,0,1777,744_AL_.jpg")
m3.photos.attach(io: frozen2, filename: 'frozen2.jpg', content_type: 'image/jpg')
m3.save

puts "Creating CHANSON DOUCE..."

m4 = Movie.create(title: "Chanson Douce", director: "Lucie Borleteau", cast: " Karin Viard, Leïla Bekhti, Antoine Reinartz", description: "Paul et Myriam ont deux enfants en bas âge. Ils engagent Louise, une nounou expérimentée, pour que Myriam puisse reprendre le travail. Louise se montre dévouée, consciencieuse, volontaire, au point que sa présence occupe une place centrale dans la famille. Mais très vite les réactions de Louise deviennent inquiétantes.", category: "Drame", duration: "1h40", rating: 3.2)
cd1 = URI.open("https://m.media-amazon.com/images/M/MV5BMTlkYTg3ZTQtMDY0Yy00YWMyLWExOWYtMDE4MDFjZjIzNDJmXkEyXkFqcGdeQXVyMTc5OTQwMzk@._V1_SY1000_SX750_AL_.jpg")
m4.photos.attach(io: cd1, filename: 'cd1.jpg', content_type: 'image/jpg')
cd2 = URI.open("http://fr.web.img2.acsta.net/r_1920_1080/pictures/19/09/20/12/04/5084382.jpg")
m4.photos.attach(io: cd2, filename: 'cd2.jpg', content_type: 'image/jpg')
m4.save

puts "Creating A COUTEAUX TIRES..."

m5 = Movie.create(title: "À couteaux tirés", director: "Rian Johnson", cast: "Daniel Craig, Chris Evans, Jamie Lee Curtis", description: "Célèbre auteur de polars, Harlan Thrombey est retrouvé mort dans sa somptueuse propriété, le soir de ses 85 ans. L’esprit affûté et la mine débonnaire, le détective Benoit Blanc est alors engagé par un commanditaire anonyme afin d’élucider l’affaire.", category: "Policier", duration: "2h11", rating: 4.1, almost_finished?: true)
ko1 = URI.open("https://m.media-amazon.com/images/M/MV5BMGUwZjliMTAtNzAxZi00MWNiLWE2NzgtZGUxMGQxZjhhNDRiXkEyXkFqcGdeQXVyNjU1NzU3MzE@._V1_SY1000_SX675_AL_.jpg")
m5.photos.attach(io: ko1, filename: 'ko1.jpg', content_type: 'image/jpg')
ko2 = URI.open("https://m.media-amazon.com/images/M/MV5BN2NjZmZhZDItOGNiNS00OTdmLTgyMzgtZDgyYzUzMGU5YTkyXkEyXkFqcGdeQXVyMTkxNjUyNQ@@._V1_SX1465_CR0,0,1465,999_AL_.jpg")
m5.photos.attach(io: ko2, filename: 'ko2.jpg', content_type: 'image/jpg')
m5.save

puts "Creating JOKER..."

m6 = Movie.create(title: "Joker", director: "Todd Phillips", cast: "Joaquin Phoenix, Robert De Niro, Zazie Beetz", description: "Le film brosse le portrait d’Arthur Fleck, un homme sans concession méprisé par la société.", category: "Drame", duration: "2h02", rating: 4.5, almost_finished?: true)

joker1 = URI.open("https://m.media-amazon.com/images/M/MV5BNjhmMWMwYzQtNzU3ZC00ODA4LTk3YjktMzk1YzgwNTVlNGU1XkEyXkFqcGdeQXVyODIyOTEyMzY@._V1_SY1000_CR0,0,674,1000_AL_.jpg")
m6.photos.attach(io: joker1, filename: 'joker1.jpg', content_type: 'image/jpg')
joker2 = URI.open("https://m.media-amazon.com/images/M/MV5BMjk4Nzg5NjktMGMxMS00NjhjLThmNjItM2JjM2VjYjAwMjcyXkEyXkFqcGdeQXVyMTkxNjUyNQ@@._V1_SY1000_SX1500_AL_.jpg")
m6.photos.attach(io: joker2, filename: 'joker2.jpg', content_type: 'image/jpg')
m6.save

puts "Creating LAST CHRISTMAS..."

m7 = Movie.create(title: "Last Christmas", director: "Paul Feig", cast: " Emilia Clarke, Henry Golding, Michelle Yeoh", description: "Kate traîne derrière elle une série de mauvaises décisions et erre dans Londres au son des grelots accrochés à ses bottes de lutin, seul emploi qu’elle ait réussi à décrocher dans une boutique de Noël. C’est pourquoi elle n’en croit pas ses yeux quand elle rencontre Tom qui semble voir en elle bien plus que ce qu’elle laisse paraître.", category: "Comédie", duration: "1h43", rating: 3.5, almost_finished?: true)

lc1 = URI.open("http://fr.web.img2.acsta.net/r_1920_1080/pictures/19/09/12/10/41/0836643.jpg")
m7.photos.attach(io: lc1, filename: 'lc1.jpg', content_type: 'image/jpg')
lc2 = URI.open("https://m.media-amazon.com/images/M/MV5BMDY0ZDc1ZWUtNjMzOC00YmIzLWI4ZTUtY2ViN2VlYzQ5ZTA5XkEyXkFqcGdeQXVyMTkxNjUyNQ@@._V1_SY1000_SX1500_AL_.jpg")
m7.photos.attach(io: lc2, filename: 'lc2.jpg', content_type: 'image/jpg')
m7.save


# SEANCES


s1 = Showtime.new(empty_seats: 5, price_cents: 300, initial_price: 11, sku: "12345B", start_hour: DateTime.new(2019,12,06,17,00,00), end_hour: DateTime.new(2019,12,06,15,47,00))
s1.movie = m6
s1.theater = t1
s1.save

s2 = Showtime.new(empty_seats: 17, price_cents: 600, initial_price: 11, sku: "12345B", start_hour: DateTime.new(2019,12,06,21,45,00), end_hour: DateTime.new(2019,12,06,15,47,00))
s2.movie = m6
s2.theater = t2
s2.save

s3 = Showtime.new(empty_seats: 15, price_cents: 700, initial_price: 12, sku: "12345B", start_hour: DateTime.new(2019,12,06,22,45,00), end_hour: DateTime.new(2019,12,06,15,47,00))
s3.movie = m6
s3.theater = t3
s3.save

s4 = Showtime.new(empty_seats: 25, price_cents: 800, initial_price: 13, sku: "12345B", start_hour: DateTime.new(2019,12,06,20,45,00), end_hour: DateTime.new(2019,12,06,15,47,00))
s4.movie = m6
s4.theater = t4
s4.save


s5 = Showtime.new(empty_seats: 12, price_cents: 900, initial_price: 15, sku: "12345A", start_hour: DateTime.new(2019,12,06,17,30,00), end_hour: DateTime.new(2019,12,06,13,47,00))
s5.movie = m1
s5.theater = t1
s5.save

s6 = Showtime.new(empty_seats: 7, price_cents: 400, initial_price: 10, sku: "12345C", start_hour: DateTime.new(2019,12,06,20,00,00), end_hour: DateTime.new(2019,12,06,16,47,00))
s6.movie = m2
s6.theater = t1
s6.save

s7 = Showtime.new(empty_seats: 37, price_cents: 500, initial_price: 12, sku: "12345D", start_hour: DateTime.new(2019,12,06,19,45,00), end_hour: DateTime.new(2019,12,06,17,47,00))
s7.movie = m3
s7.theater = t2
s7.save


s8 = Showtime.new(empty_seats: 11, price_cents: 400, initial_price: 13, sku: "12345E", start_hour: DateTime.new(2019,12,06,19,10,00), end_hour: DateTime.new(2019,12,06,18,47,00))
s8.movie = m4
s8.theater = t1
s8.save

s9 = Showtime.new(empty_seats: 22, price_cents: 300, initial_price: 11, sku: "12345F", start_hour: DateTime.new(2019,12,06,17,00,00), end_hour: DateTime.new(2019,12,06,19,47,00))
s9.movie = m5
s9.theater = t1
s9.save

s10 = Showtime.new(empty_seats: 15, price_cents: 300, initial_price: 11, sku: "12345F", start_hour: DateTime.new(2019,12,06,17,10,00), end_hour: DateTime.new(2019,12,06,19,47,00))
s10.movie = m7
s10.theater = t1
s10.save

puts "C'est bon :)"
