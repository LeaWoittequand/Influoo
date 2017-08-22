email = "@gmail.com"
fashion = Category.create!(name: "Fashion")
sport = Category.create!(name: "Sport")
new_tech = Category.create!(name: "New Tech")

User.create!( first_name: "Lea",
              last_name: "Woittequand",
              description: "I've created Cooker Market at the end of my studies. Passionate by web_marketing, i love to learn and understand new process.",
              email: first_name.downcase + email,
              avatar: "",
            )
User.create!( first_name: "Aurelien",
              last_name: "Bigo",
              description: "I have launched my own company 10 month ago, which is selling bicycle spare parts : carbon fibers only. We are selling online spare part and 'à la carte' road bicycles. The company is called : Stiff Bicycles Factory. ",
              email: first_name.downcase + email,
              avatar: "",
            )
User.create!( first_name: "Clement",
              last_name: "Meyer",
              description: "I really enjoy get my hand dirty and try some new things.
I aim to create video games, and for that, I need collaborators.",
              email: first_name.downcase + email,
              avatar: "",
            )
puts "Pro users created"

# FASHION
sara = User.create!( first_name: "Sara",
              last_name: "Escudero",
              description: "",
              email: first_name.downcase + last_name.downcase + email,
              avatar: ""
            )
Influencer.create!( pseudo: "#{sara.first_name} #{sara.last_name}"
                    fb_url: "https://www.facebook.com/CollageVintage/",
                    fb_followers: 494935,
                    ig_url: "https://www.instagram.com/collagevintage/",
                    ig_followers: 804555,
                    tw_username: "@collagevintage",
                    tw_followers: 27341,
                    description: "Addicted fashion, trends, style and of course collage vintage!",
                    language: "Spanish",
                    avatar: "",
                    banner_img: "",
                    user: sara,
                    category: fashion
                  )
zoella = User.create!( first_name: "Zoella",
              last_name: "Zeebo",
              description: "",
              email: first_name.downcase + last_name.downcase + email,
              avatar: ""
            )
Influencer.create!( pseudo: "#{zoella.first_name} #{zoella.last_name}"
                    fb_url: "https://www.facebook.com/zoe.zoella",
                    fb_followers: 2666027,
                    ig_url: "https://www.instagram.com/zoella/",
                    ig_followers: 10825059,
                    tw_username: "@Zozeebo",
                    tw_followers: 65223,
                    description: "My name is Zoe, I’m 26 years young and a writer and enthusiast of all things “Beauty, Fashion and Life” related. Once Upon A Time, In February 2009, after indulging in various other Beauty Blogs as a way to read up on the latest goings on in the Beauty world, I decided to join in on one very boring evening, and “Zoella” was born.",
                    language: "English",
                    avatar: "",
                    banner_img: "",
                    user: zoella,
                    category: fashion
                  )
christene = User.create!( first_name: "Christene",
              last_name: "Barberich",
              description: "",
              email: first_name.downcase + last_name.downcase + email,
              avatar: ""
            )
Influencer.create!( pseudo: "#{christene.first_name} #{christene.last_name}"
                    fb_url: "https://www.facebook.com/refinery29/",
                    fb_followers: 4748638,
                    ig_url: "https://www.instagram.com/refinery29/",
                    ig_followers: 1548850,
                    tw_username: "@Refinery29",
                    tw_followers: 1268588,
                    description: "Refinery29 is a lifestyle destination that delivers nonstop inspiration to live a more creative life.",
                    language: "English",
                    avatar: "",
                    banner_img: "",
                    user: christene,
                    category: fashion
                  )
devyni = User.create!( first_name: "Devyni",
              last_name: "Hightower",
              description: "",
              email: first_name.downcase + last_name.downcase + email,
              avatar: ""
            )
Influencer.create!( pseudo: "#{devyni.first_name} #{devyni.last_name}"
                    fb_url: "https://www.facebook.com/DEVYNIstyles/",
                    fb_followers: 423,
                    ig_url: "https://www.instagram.com/devynistyles/",
                    ig_followers: 8262,
                    tw_username: "@DEVYNIstyles",
                    tw_followers: 436,
                    description: "Devyni Hightower, Fashion and Style Blogger, freelance Fashion Stylist, and Personal Shopper living in Orlando,FL.",
                    language: "English",
                    avatar: "",
                    banner_img: "",
                    user: devyni,
                    category: fashion
                  )
chiara = User.create!( first_name: "Chiara",
              last_name: "Ferragni",
              description: "",
              email: first_name.downcase + last_name.downcase + email,
              avatar: ""
            )
Influencer.create!( pseudo: "#{chiara.first_name} #{chiara.last_name}"
                    fb_url: "https://www.facebook.com/theblondesalad/",
                    fb_followers: 1241361,
                    ig_url: "https://www.instagram.com/chiaraferragni/",
                    ig_followers: 8753976,
                    tw_username: "@ChiaraFerragni",
                    tw_followers: 334329,
                    description: "I'm also preparing for the launch of my 3rd season shoe line “Chiara Ferragni” (Chiaraferragni.com): a perfect combination of my style and the amazing “made in Italy”. In September I will also start a challenging collaboration with the underwear brand Yamamay, covering different roles.",
                    language: "English",
                    avatar: "",
                    banner_img: "",
                    user: chiara,
                    category: fashion
                  )
mariano = User.create!( first_name: "Mariano",
              last_name: "Di Vaio",
              description: "",
              email: first_name.downcase + "divaio" + email,
              avatar: ""
            )
Influencer.create!( pseudo: "#{mariano.first_name} #{mariano.last_name}"
                    fb_url: "https://www.facebook.com/MARIANODIVAIO.FANPAGE/",
                    fb_followers: 3197403,
                    ig_url: "https://www.instagram.com/marianodivaio/",
                    ig_followers: 5668487,
                    tw_username: "@marianodivaio",
                    tw_followers: 128624,
                    description: "Born in 1989, Mariano is an italian model recognized worldwide
He’s already worked with some of the leading brands of fashion world and attracted the attention of the most famous fashion magazine.
In March 2012, he opened his own blog,that allowed him to become, in 18 months, one of the most influent worldwide fashion blogger",
                    language: "English",
                    avatar: "",
                    banner_img: "",
                    user: mariano,
                    category: fashion
                  )

#DIGITAL
amy = User.create!( first_name: "Amy",
              last_name: "Porterfield",
              description: "",
              email: first_name.downcase + last_name.downcase + email,
              avatar: ""
            )
Influencer.create!( pseudo: "#{amy.first_name} #{amy.last_name}"
                    fb_url: "https://www.facebook.com/AmyPorterfield",
                    fb_followers: 243298,
                    ig_url: "",
                    ig_followers: 0,
                    tw_username: "@AmyPorterfield",
                    tw_followers: 149645,
                    description: "I'm the co-author of Facebook Marketing All-In-One for Dummies and a Social Media Strategist. I create educational programs for small businesses and entrepreneurs to help them get more traffic, leads and sales with social media marketing. I've been in the marketing arena for over 12 years and spent over 6 years working along side Peak Performance Coach, Anthony Robbins, where I managed his content marketing team and major online marketing campaigns. My most recent online program, FBinfluence, teaches businesses and entrepreneurs how to grow a lucrative fan base, increase engagement and turn fans into buyers.",
                    language: "English",
                    avatar: "",
                    banner_img: "",
                    user: amy,
                    category: new_tech
                  )
melanie = User.create!( first_name: "Melanie",
              last_name: "Duncan",
              description: "",
              email: first_name.downcase + last_name.downcase + email,
              avatar: ""
            )
Influencer.create!( pseudo: "#{melanie.first_name} #{melanie.last_name}"
                    fb_url: "https://www.facebook.com/pg/EntrepreneuressAcademy",
                    fb_followers: 243298,
                    ig_url: "",
                    ig_followers: 0,
                    tw_username: "@MelanieDuncan7",
                    tw_followers: 9553,
                    description: "Our mission is to give people the tools and strategies that they need to grow their businesses online so that they can have the freedom to live the life they have always dreamed of.",
                    language: "English",
                    avatar: "",
                    banner_img: "",
                    user: melanie,
                    category: new_tech
                  )
jonathon = User.create!( first_name: "Jonathon",
              last_name: "Colman",
              description: "",
              email: first_name.downcase + last_name.downcase + email,
              avatar: ""
            )
Influencer.create!( pseudo: "#{jonathon.first_name} #{jonathon.last_name}"
                    fb_url: "https://www.facebook.com/jcolman",
                    fb_followers: 1762,
                    ig_url: "",
                    ig_followers: 0,
                    tw_username: "@jcolman",
                    tw_followers: 16322,
                    description: "Product UX + content strategy at Facebook. Keynote speaker, Webby Award winner, returned Peace Corps volunteer.",
                    language: "English",
                    avatar: "",
                    banner_img: "",
                    user: jonathon,
                    category: new_tech
                  )
jonathon = User.create!( first_name: "Jonathon",
              last_name: "Colman",
              description: "",
              email: first_name.downcase + last_name.downcase + email,
              avatar: ""
            )
Influencer.create!( pseudo: "#{jonathon.first_name} #{jonathon.last_name}"
                    fb_url: "https://www.facebook.com/jcolman",
                    fb_followers: 1762,
                    ig_url: "",
                    ig_followers: 0,
                    tw_username: "@jcolman",
                    tw_followers: 16322,
                    description: "Product UX + content strategy at Facebook. Keynote speaker, Webby Award winner, returned Peace Corps volunteer.",
                    language: "English",
                    avatar: "",
                    banner_img: "",
                    user: jonathon,
                    category: new_tech
                  )
