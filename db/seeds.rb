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
louxor = URI.open("https://upload.wikimedia.org/wikipedia/commons/4/42/P1320950_Paris_X_Louxor_rwk.jpg")
t1.photo.attach(io: louxor, filename: 'louxor.jpg', content_type: 'image/jpg')
t1.save

puts "Creating t2..."


t2 = Theater.create(name: "Majestic Bastille", address: "4 Boulevard Richard Lenoir, 75011 Paris")
majestic = URI.open("https://projectionniste.net/images/75-majestic-bastille-paris-2.jpg")
t2.photo.attach(io: majestic, filename: 'majestic.jpg', content_type: 'image/jpg')
t2.save

puts "Creating m1..."


m1 = Movie.create(title: movie1_char["title"], director: "Toledano", cast: "Vincent Cassel, Reda Kateb, Hélène Vincent", description: "The story of two men, educators of children and adolescents with autism.", category: "Drama", duration: "1h47", rating: 4.5, almost_finished?: true)

puts "Creating hors normes photos..."

hn1 = URI.open("https://m.media-amazon.com/images/M/MV5BZTEwMTlkNjAtZTQxZi00YjIwLTkxNmItYzQ4OWZkMzJkMzliXkEyXkFqcGdeQXVyMTMxODk2OTU@._V1_SY1000_CR0,0,737,1000_AL_.jpg")
m1.photos.attach(io: hn1, filename: 'hn1.jpg', content_type: 'image/jpg')
hn2 = URI.open("https://m.media-amazon.com/images/M/MV5BMTkwOGM3YjAtYWUxYS00ZmJjLWI1OGQtYmExNTc0ZjhmMmZmXkEyXkFqcGdeQXVyNTc5OTMwOTQ@._V1_SY1000_CR0,0,1500,1000_AL_.jpg")
m1.photos.attach(io: hn2, filename: 'hn2.jpg', content_type: 'image/jpg')
m1.save

m2 = Movie.create(title: "Les Misérables", director: "Ly", cast: "Damien Bonnard, Alexis Manenti, Djibril Zonga, Issa Perica", description: "Stéphane joined the Anti-Crime Brigade of Montfermeil, in the 93. He meets his new teammates, Chris and Gwada, and discovers the tensions between the different groups of the district.", category: "Detective", duration: "1h47", rating: 4.3, almost_finished?: true)

miserables_1 = URI.open("https://m.media-amazon.com/images/M/MV5BZTZkYTBkY2MtMzRmNS00NjM3LWFiMzItZmJjNzNhMjgyYzczXkEyXkFqcGdeQXVyODk4OTc3MTY@._V1_SY1000_CR0,0,677,1000_AL_.jpg")
m2.photos.attach(io: miserables_1, filename: 'les_miserables-1.jpg', content_type: 'image/jpg')
miserables_2 = URI.open("https://m.media-amazon.com/images/M/MV5BMDY0MGE5MzUtNDllMi00MmUxLWI3MTItNWJiMmQ3MzJjMDcxXkEyXkFqcGdeQXVyODIyOTEyMzY@._V1_.jpg")
m2.photos.attach(io: miserables_2, filename: 'miserables-2.jpg', content_type: 'image/jpg')
m2.save

m3 = Movie.create(title: "Frozen 2", director: "Chris Buck", cast: "Kristen Bell, Idina Menzel, Josh Gad", description: "Anna, Elsa, Kristoff, Olaf and Sven leave Arendelle to travel to an ancient, autumn-bound forest of an enchanted land. They set out to find the origin of Elsa's powers in order to save their kingdom.", category: "Animation", duration: "1h47", rating: 4.9)
frozen1 = URI.open("https://m.media-amazon.com/images/M/MV5BMjA0YjYyZGMtN2U0Ni00YmY4LWJkZTItYTMyMjY3NGYyMTJkXkEyXkFqcGdeQXVyNDg4NjY5OTQ@._V1_SY1000_SX675_AL_.jpg")
m3.photos.attach(io: frozen1, filename: 'frozen1.jpg', content_type: 'image/jpg')
miserables_2 = URI.open("https://m.media-amazon.com/images/M/MV5BMDY0MGE5MzUtNDllMi00MmUxLWI3MTItNWJiMmQ3MzJjMDcxXkEyXkFqcGdeQXVyODIyOTEyMzY@._V1_.jpg")
m2.photos.attach(io: miserables_2, filename: 'miserables-2.jpg', content_type: 'image/jpg')
m2.save

m4 = Movie.create(title: "The Lion King", director: "Chris Buck", description: "Lorem ipsum taoifnez zheioghzojrgb jezpigskhnrzjogn pihzeg pihzpkg pihgiphazr giphegpihazr ghzrgiphearg ihgpizrhg aipzrhg zrgpihzr giphzr pigjh apirsgj pzirgj pizrhjg pierhgpikzrhng pishrgpierhg piezrhg piekrh gpizerh gpierjgpijer gj", category: "Animation", duration: "1h47", rating: 5)
rl1 = URI.open("https://m.media-amazon.com/images/M/MV5BZTQ4ZDhmOTMtN2EzZi00ZjhjLTkxMmMtYTFiODNiYzEwZTc3XkEyXkFqcGdeQXVyODUzMjQxMTA@._V1_SY1000_CR0,0,666,1000_AL_.jpg")
m4.photos.attach(io: rl1, filename: 'images_pe8e7l.jpg', content_type: 'image/jpg')

m5 = Movie.create(title: "Knives out", director: "Rian Johnson", cast: "Daniel Craig, Chris Evans, Ana de Armas, Jamie Lee Curtis", description: "A detective investigates the death of a patriarch of an eccentric, combative family.", category: "Drama", duration: "1h47", rating: 5, almost_finished?: true)
ko1 = URI.open("https://m.media-amazon.com/images/M/MV5BMGUwZjliMTAtNzAxZi00MWNiLWE2NzgtZGUxMGQxZjhhNDRiXkEyXkFqcGdeQXVyNjU1NzU3MzE@._V1_SY1000_SX675_AL_.jpg")
m5.photos.attach(io: ko1, filename: 'ko1.jpg', content_type: 'image/jpg')


m6 = Movie.create(title: movie["results"].first["title"], )

s1 = Showtime.new(empty_seats: 15, price_cents: 400, initial_price: 15, sku: "12345A", start_hour: DateTime.new(2019,12,06,18,00,00), end_hour: DateTime.new(2019,12,06,13,47,00))
s1.movie = m1
s1.theater = t1
s1.save

s2 = Showtime.new(empty_seats: 25, price_cents: 300, initial_price: 11, sku: "12345B", start_hour: DateTime.new(2019,12,06,18,45,00), end_hour: DateTime.new(2019,12,06,15,47,00))
s2.movie = m1
s2.theater = t2
s2.save

s3 = Showtime.new(empty_seats: 17, price_cents: 400, initial_price: 10, sku: "12345C", start_hour: DateTime.new(2019,12,06,19,00,00), end_hour: DateTime.new(2019,12,06,16,47,00))
s3.movie = m2
s3.theater = t1
s3.save

s4 = Showtime.new(empty_seats: 37, price_cents: 300, initial_price: 12, sku: "12345D", start_hour: DateTime.new(2019,12,06,19,45,00), end_hour: DateTime.new(2019,12,06,17,47,00))
s4.movie = m2
s4.theater = t2
s4.save


s5 = Showtime.new(empty_seats: 25, price_cents: 300, initial_price: 13, sku: "12345E", start_hour: DateTime.new(2019,12,06,20,10,00), end_hour: DateTime.new(2019,12,06,18,47,00))
s5.movie = m4
s5.theater = t1
s5.save

s6 = Showtime.new(empty_seats: 25, price_cents: 300, initial_price: 11, sku: "12345F", start_hour: DateTime.new(2019,12,06,21,00,00), end_hour: DateTime.new(2019,12,06,19,47,00))
s6.movie = m3
s6.theater = t1
s6.save

s7 = Showtime.new(empty_seats: 25, price_cents: 300, initial_price: 11, sku: "12345F", start_hour: DateTime.new(2019,12,06,21,10,00), end_hour: DateTime.new(2019,12,06,19,47,00))
s7.movie = m5
s7.theater = t1
s7.save

puts "C'est bon :)"
