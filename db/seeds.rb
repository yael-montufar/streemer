User.destroy_all
PerformerProfile.destroy_all
Event.destroy_all
Review.destroy_all
Tip.destroy_all

puts "Creating performers..."
performer_1 = PerformerProfile.create!(
  user: User.create!(email: "performer1@email.com", password: "123456"),
  stage_name: "Some Herd Trouble",
  bio: "From the moment Some Herd Trouble starts playing, people are drawn to the warm sounds they create.  As the lead Rhys sits amongst his instruments you feel the rhythmic pulse of the stomp box, and the haunting bluesy sounds of the harmonica.  His guitar work playing underneath while his raw, powerful and emotive vocals soar above."
)
performer_2 = PerformerProfile.create!(
  user: User.create!(email: "performer2@email.com", password: "123456"),
  stage_name: "The Space Cowboy",
  bio: "Since the Space Cowboy was just eight years old he has been perfecting the art of street theatre. His unique and incredibly skilled performance has been seen all around the world."
)
performer_3 = PerformerProfile.create!(
  user: User.create!(email: "performer3@email.com", password: "123456"),
  stage_name: "FloorLegendz",
  bio: "Floor LegendZ is a break dance crew taking over the streets of Mexico. Fun, vibrant and full of talent."
)
performer_4 = PerformerProfile.create!(
  user: User.create!(email: "performer4@email.com", password: "123456"),
  stage_name: "Angel",
  bio: "Charlotte is a singer / songwriter and extrememly poite and cheery street performer around Mexico City.  Charlotte writes observational dittys that will haunt your soul and takes her songs to the streets."
)
performer_5 = PerformerProfile.create!(
  user: User.create!(email: "performer5@email.com", password: "123456"),
  stage_name: "Tassel",
  bio: "Tassel is a singer-songwriter who moved to Mexico City in 2005.  He started playing guitar and writing songs in his teens and has performed ever since, playing regular gigs he started busking ever since. His songwriting is influenced by the folk singer tradition of Central America."
)
performer_6 = PerformerProfile.create!(
  user: User.create!(email: "performer6@email.com", password: "123456"),
  stage_name: "Stitch",
  bio: "A one man band playing the sax, guitar, piano, vocals and bass drums.  Originally from New Orleans.  I move to New York and then Meixco City. I love all kinds of music, I'm trained as a jazz player but also play blues, folk, gospel and country.  I love music and don't have a choice but to play, it's a calling that I have followed since a child."
)
performer_7 = PerformerProfile.create!(
  user: User.create!(email: "performer7@email.com", password: "123456"),
  stage_name: "Copywrite",
  bio: "A busker of multiple countries and 10 years experience, Jack sillfylly mixes guitar, vocals, beatboxing, looping, sampling and effects to create a powerful sound evoking an eclectic blend of folk, hip hop, rock, pop and base music.  Captivating performance with a unique atmosphere and rich, driving layers, all performed live. Expect a hell of a show."
)
performer_8 = PerformerProfile.create!(
  user: User.create!(email: "performer8@email.com", password: "123456"),
  stage_name: "Stooge Elk",
  bio: "Jayden has been all over Mexico performing at festivals to exhibit his art.  Mexican-born Jayden is an amazing, super-talented street artist. Using tools like a power drill, chisel, and different types of paint, Jayden literally scratches off the surface of buildings to create his masterpieces."
)

puts "Creating events..."
event_1 = Event.create!(
  performer_profile: performer_1,
  name: "Hello Neighbour",
  description: "Jazz Music",
  location:  "Lerdo 206, Guerrero, Mexico City, CDMX, Mexico"
)
event_2 = Event.create!(
  performer_profile: performer_2,
  name: "Velocity",
  description: "Juggler",
  location: "Campeche 200, Hipódromo Condesa, Cuauhtémoc, 06170 Ciudad de México, CDMX"
)
event_3 = Event.create!(
  performer_profile: performer_3,
  name: "Indigoing",
  description: "Breakdance",
  location: "Av Insurgentes Sur 644, Del Valle, Benito Juarez, Mexico City, CDMX, Mexico"
)
event_4 = Event.create!(
  performer_profile: performer_4,
  name: "Botanical",
  description: "Cover Band",
  location: "Fernando Montes de Oca 28 - Ciudad de México, CDMX"
)
event_5 = Event.create!(
  performer_profile: performer_5,
  name: "MonkeyBusiness",
  description: "Cover Band",
  location: "Av Insurgentes Sur 710, Del Valle, Benito Juarez, Mexico City, CDMX, Mexico"
)
event_6 = Event.create!(
  performer_profile: performer_6,
  name: "Soulvibezzz",
  description: "Jazz",
  location: "Campeche 233, Hipódromo Condesa, Cuauhtémoc, 06170 Ciudad de México, CDMX"
)
event_7 = Event.create!(
  performer_profile: performer_7,
  name: "Unhinged",
  description: "Rock",
  location: "Rubens 6, Benito Juárez, San Juan, Mexico City, CDMX, Mexico"
)
event_8 = Event.create!(
  performer_profile: performer_8,
  name: "SouthWest",
  description: "Street Art",
  location: "Bosque de Chapultepec, Miguel Hidalgo, Mexico City, CDMX, Mexico"
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
  user: patron_1,
  event: event_1
)
Tip.create!(
  user: patron_2,
  event: event_1
)
Tip.create!(
  user: patron_2,
  event: event_2
)
Tip.create!(
  user: patron_3,
  event: event_3
)
Tip.create!(
  user: patron_4,
  event: event_4
)
Tip.create!(
  user: patron_5,
  event: event_5
)
Tip.create!(
  user: patron_6,
  event: event_6
)
Tip.create!(
  user: patron_7,
  event: event_7
)
Tip.create!(
  user: patron_8,
  event: event_8
)

puts "Creating reviews for performers.."

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
