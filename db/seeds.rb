require "open-uri"

User.destroy_all
PerformerProfile.destroy_all
Event.destroy_all
Review.destroy_all
Tip.destroy_all

puts "Creating live performers..."
performer_1 = PerformerProfile.create!(
  user: User.create!(email: "performer1@email.com", password: "123456"),
  stage_name: "Some Herd Trouble",
  bio: "From the moment Some Herd Trouble starts playing, people are drawn to the warm sounds they create.  As the lead Rhys sits amongst his instruments you feel the rhythmic pulse of the stomp box, and the haunting bluesy sounds of the harmonica.  His guitar work playing underneath while his raw, powerful and emotive vocals soar above."
)
file = URI.open("https://res.cloudinary.com/yaelmontufar/image/upload/v1583980559/User%20profiles/29386816_10211679299598161_8683443718025379840_n_c1t5ol.jpg")
   performer_1.photo.attach(io: file, filename: 'chello.jpg', content_type: 'image/jpg')
   performer_1.save!

performer_2 = PerformerProfile.create!(
  user: User.create!(email: "performer2@email.com", password: "123456"),
  stage_name: "The Space Cowboy",
  bio: "Since the Space Cowboy was just eight years old he has been perfecting the art of street theatre. His unique and incredibly skilled performance has been seen all around the world."
)
file = URI.open("https://res.cloudinary.com/yaelmontufar/image/upload/v1583980524/User%20profiles/89608535_2514402218823793_4208617828917444608_o_o9k7e6.jpg")
    performer_2.photo.attach(io: file, filename: 'chello.jpg', content_type: 'image/jpg')
    performer_2.save!


performer_3 = PerformerProfile.create!(
  user: User.create!(email: "performer3@email.com", password: "123456"),
  stage_name: "FloorLegendz",
  bio: "Floor LegendZ is a break dance crew taking over the streets of Mexico. Fun, vibrant and full of talent."
)
file = URI.open("https://res.cloudinary.com/yaelmontufar/image/upload/v1584030580/User%20profiles/download_tq7wwz.jpg")
    performer_3.photo.attach(io: file, filename: 'chello.jpg', content_type: 'image/jpg')
    performer_3.save!

performer_4 = PerformerProfile.create!(
  user: User.create!(email: "performer4@email.com", password: "123456"),
  stage_name: "Angel",
  bio: "Charlotte is a singer / songwriter and extrememly poite and cheery street performer around Mexico City.  Charlotte writes observational dittys that will haunt your soul and takes her songs to the streets."
)
file = URI.open("https://res.cloudinary.com/yaelmontufar/image/upload/v1583980751/User%20profiles/T02NE0241-U9B7VAVS8-d179a8be630c-512_agahxd.jpg")
    performer_4.photo.attach(io: file, filename: 'chello.jpg', content_type: 'image/jpg')
    performer_4.save!


performer_5 = PerformerProfile.create!(
  user: User.create!(email: "performer5@email.com", password: "123456"),
  stage_name: "Tassel",
  bio: "Tassel is a singer-songwriter who moved to Mexico City in 2005.  He started playing guitar and writing songs in his teens and has performed ever since, playing regular gigs he started busking ever since. His songwriting is influenced by the folk singer tradition of Central America."
)
file = URI.open("https://res.cloudinary.com/yaelmontufar/image/upload/v1583980615/User%20profiles/60338632_10217742105094665_8739176910170357760_n_a1xaua.jpg")
    performer_5.photo.attach(io: file, filename: 'chello.jpg', content_type: 'image/jpg')
    performer_5.save!

performer_6 = PerformerProfile.create!(
  user: User.create!(email: "performer6@email.com", password: "123456"),
  stage_name: "Stitch",
  bio: "A one man band playing the sax, guitar, piano, vocals and bass drums.  Originally from New Orleans.  I move to New York and then Meixco City. I love all kinds of music, I'm trained as a jazz player but also play blues, folk, gospel and country.  I love music and don't have a choice but to play, it's a calling that I have followed since a child."
)
file = URI.open("https://res.cloudinary.com/yaelmontufar/image/upload/v1583980523/User%20profiles/89144402_3211596228869719_8311786552791400448_n_ildipk.jpg")
    performer_6.photo.attach(io: file, filename: 'chello.jpg', content_type: 'image/jpg')
    performer_6.save!

performer_7 = PerformerProfile.create!(
  user: User.create!(email: "performer7@email.com", password: "123456"),
  stage_name: "Copywrite",
  bio: "A busker of multiple countries and 10 years experience, Jack sillfylly mixes guitar, vocals, beatboxing, looping, sampling and effects to create a powerful sound evoking an eclectic blend of folk, hip hop, rock, pop and base music.  Captivating performance with a unique atmosphere and rich, driving layers, all performed live. Expect a hell of a show."
)
file = URI.open("https://res.cloudinary.com/yaelmontufar/image/upload/v1584030583/User%20profiles/pexels-photo-220453_z5pcrq.jpg")
    performer_7.photo.attach(io: file, filename: 'chello.jpg', content_type: 'image/jpg')
    performer_7.save!


performer_8 = PerformerProfile.create!(
  user: User.create!(email: "performer8@email.com", password: "123456"),
  stage_name: "Stooge Elk",
  bio: "Jayden has been all over Mexico performing at festivals to exhibit his art.  Mexican-born Jayden is an amazing, super-talented street artist. Using tools like a power drill, chisel, and different types of paint, Jayden literally scratches off the surface of buildings to create his masterpieces."
)
file = URI.open("https://res.cloudinary.com/yaelmontufar/image/upload/v1584030580/User%20profiles/20181105_193836_idifid.jpg")
    performer_8.photo.attach(io: file, filename: 'chello.jpg', content_type: 'image/jpg')
    performer_8.save!

# ========== upcoming events ==============

puts "Creating upcoming events..."

upcoming_event_1 = Event.create!(
  performer_profile: performer_2,
  name: "Sound Isidro",
  description: "The best conteporary music ",
  starts_at: Time.current + 6.hours,
  ends_at: Time.current + 12.hours,
  location: "Campeche 200, Hipódromo Condesa, Cuauhtémoc, 06170 Ciudad de México, CDMX",
  # photo: "https://res.cloudinary.com/yaelmontufar/image/upload/v1583792294/07ace029-7be6-39e7-b342-780f5cce9523_kxkn1a.jpg",
)
file = URI.open("https://res.cloudinary.com/yaelmontufar/image/upload/v1583792294/07ace029-7be6-39e7-b342-780f5cce9523_kxkn1a.jpg")
     upcoming_event_1.photo.attach(io: file, filename: 'amp.jpg', content_type: 'image/jpg')
     upcoming_event_1.save!

upcoming_event_2 = Event.create!(
  performer_profile: performer_4,
  name: "Flamenco dance",
  description: "From Spain to Mexican streets, Flamenco dance",
  starts_at: Time.current + rand(1..3).days,
  ends_at: Time.current + rand(2..30).minutes + rand(2..6).hours,
  location: "Fernando Montes de Oca 28 - Ciudad de México, CDMX",
  # photo: "https://res.cloudinary.com/yaelmontufar/image/upload/v1583792298/VEADo0XoZj-compress_flsqex.jpg",
)
file = URI.open("https://res.cloudinary.com/yaelmontufar/image/upload/v1583792298/VEADo0XoZj-compress_flsqex.jpg")
     upcoming_event_2.photo.attach(io: file, filename: 'chello.jpg', content_type: 'image/jpg')
     upcoming_event_2.save!


upcoming_event_3 = Event.create!(
  performer_profile: performer_6,
  name: "Fire in Earth",
  description: "The best fire performace that will blow your mind",
  starts_at: Time.current + rand(1..3).days,
  ends_at: Time.current + rand(2..30).minutes + rand(2..6).hours,
  location: "Campeche 233, Hipódromo Condesa, Cuauhtémoc, 06170 Ciudad de México, CDMX",
  # photo: "https://res.cloudinary.com/yaelmontufar/image/upload/v1583792302/6dfc3f05-9f4e-3e11-865c-404cf6296202_gv0buz.jpg",
)
file = URI.open("https://res.cloudinary.com/yaelmontufar/image/upload/v1583792302/6dfc3f05-9f4e-3e11-865c-404cf6296202_gv0buz.jpg")
     upcoming_event_3.photo.attach(io: file, filename: 'fire.jpg', content_type: 'image/jpg')
     upcoming_event_3.save!


upcoming_event_4 = Event.create!(
  performer_profile: performer_8,
  name: "Salsabor",
  description: "Salsa for the salseros like you. Best street salsa concert.",
  starts_at: Time.current + rand(1..3).days,
  ends_at: Time.current + rand(2..30).minutes + rand(2..6).hours,
  location: "Bosque de Chapultepec, Miguel Hidalgo, Mexico City, CDMX, Mexico",
  # photo: "https://res.cloudinary.com/yaelmontufar/image/upload/v1583792306/27e4ec2e-491e-357d-bf5f-f77abe096614_yswyjn.jpg",
)
file = URI.open("https://res.cloudinary.com/yaelmontufar/image/upload/v1583792306/27e4ec2e-491e-357d-bf5f-f77abe096614_yswyjn.jpg")
     upcoming_event_4.photo.attach(io: file, filename: 'drummers.jpg', content_type: 'image/jpg')
     upcoming_event_4.save!


# ============== live events ==========

puts "Creating live events..."
live_event_1 = Event.create!(
  performer_profile: performer_1,
  name: "Hello Neighbour",
  description: "A jazz musical ",
  location:  "Lerdo 206, Guerrero, Mexico City, CDMX, Mexico",
  # starts_at: Time.current + 40.minutes,
  starts_at: Time.current - rand(20..60).minutes,
  ends_at: Time.current + 40.minutes + 1.hour,
  twitch_id: "https://player.twitch.tv/?autoplay=false&video=v239617707",
)

live_event_2 = Event.create!(
  performer_profile: performer_3,
  name: "Indigoing",
  description: "Enjoy with us an unique breakdance show ",
  starts_at: Time.current - rand(20..60).minutes,
  ends_at: Time.current + 40.minutes + 2.hour,
  location: "Av Insurgentes Sur 644, Del Valle, Benito Juarez, Mexico City, CDMX, Mexico",
  twitch_id: "https://player.twitch.tv/?autoplay=false&video=v238218178",
)

live_event_3 = Event.create!(
  performer_profile: performer_5,
  name: "MonkeyBusiness",
  description: "Cover Band that will play your favority music",
  starts_at: Time.current - rand(20..60).minutes,
  ends_at: Time.current + 40.minutes + 2.hour,
  location: "Av Insurgentes Sur 710, Del Valle, Benito Juarez, Mexico City, CDMX, Mexico",
  twitch_id: "https://player.twitch.tv/?autoplay=false&video=v546129488",
)

live_event_4 = Event.create!(
  performer_profile: performer_7,
  name: "Unhinged",
  description: "Rock from the 90's ",
  starts_at: Time.current - rand(20..60).minutes,
  ends_at: Time.current + 40.minutes + 2.hour,
  location: "Rubens 6, Benito Juárez, San Juan, Mexico City, CDMX, Mexico",
  twitch_id: "https://player.twitch.tv/?autoplay=false&video=v238183579",
)


puts "Creating patrons..."
patron_1 = User.create!(
  email: "patron1@email.com",
  password: "123456"
)
patron_2 = User.create!(
  email: "patron2@email.com",
  password: "123456"
)
patron_3 = User.create!(
  email: "patron3@email.com",
  password: "123456"
)
patron_4 = User.create!(
  email: "patron4@email.com",
  password: "123456"
)
patron_5 = User.create!(
  email: "patron5@email.com",
  password: "123456"
)
patron_6 = User.create!(
  email: "patron6@email.com",
  password: "123456"
)
patron_7 = User.create!(
  email: "patron7@email.com",
  password: "123456"
)
patron_8 = User.create!(
  email: "patron8@email.com",
  password: "123456"
)

puts "Patrons are giving tips..."
Tip.create!(
  amount: 5,
  state: "paid",
  user: patron_1,
  performer_profile: performer_1
)
Tip.create!(
  amount: 10,
  state: "pending",
  user: patron_2,
  performer_profile: performer_1
)
Tip.create!(
  amount: 1,
  state: "paid",
  user: patron_2,
  performer_profile: performer_2
)
Tip.create!(
  amount: 5,
  state: "paid",
  user: patron_3,
  performer_profile: performer_3
)
Tip.create!(
  amount: 1,
  state: "pending",
  user: patron_4,
  performer_profile: performer_4
)
Tip.create!(
  amount: 5,
  state: "paid",
  user: patron_5,
  performer_profile: performer_5
)
Tip.create!(
  amount: 10,
  state: "pending",
  user: patron_6,
  performer_profile: performer_6
)
Tip.create!(
  amount: 5,
  state: "paid",
  user: patron_7,
  performer_profile: performer_7
)
Tip.create!(
  amount: 2,
  state: "paid",
  user: patron_8,
  performer_profile: performer_8
)

puts "Creating reviews for live performers.."

review_1 = Review.create!(
content: "Excelent show. I love it!",
performer_profile: performer_1
)
review_2 = Review.create!(
content: "I would never get tired of seeing this show",
performer_profile: performer_2
)
review_3 = Review.create!(
content: "Great event!",
performer_profile: performer_3
)
review_4 = Review.create!(
content: "It is an unique an interisting show",
performer_profile: performer_4
)
review_5 = Review.create!(
content: "Good performance",
performer_profile: performer_5
)
review_6 = Review.create!(
content: "No doubtat all, one of the best shows I've ever seen",
performer_profile: performer_6
)
review_7 = Review.create!(
content: "I would recommend it to all!",
performer_profile: performer_7
)
review_8 = Review.create!(
content: "Nice show",
performer_profile: performer_8
)


# "https://player.twitch.tv/?autoplay=false&video=v239617707" "london"  "guitar"
# "https://player.twitch.tv/?autoplay=false&video=v238264042" "praga"   "harp"
# "https://player.twitch.tv/?autoplay=false&video=v238218178" "italy"   "onemanband"
# "https://player.twitch.tv/?autoplay=false&video=v238274963" "london"  "guitar"
# # "https://player.twitch.tv/?autoplay=false&video=v238276318" "london"  "guitar"
# "https://player.twitch.tv/?autoplay=false&video=v546129488" "praga"   "glass"
# "https://player.twitch.tv/?autoplay=false&video=v238257236" "japan"   "drummer"
# "https://player.twitch.tv/?autoplay=false&video=v238183579" "africa"  "kaira"
# # "https://player.twitch.tv/?autoplay=false&video=v237749076" "hang"
# # "https://player.twitch.tv/?autoplay=false&video=v237782664" "erhu"
# "https://player.twitch.tv/?autoplay=false&video=v237750416" "beatbox"
