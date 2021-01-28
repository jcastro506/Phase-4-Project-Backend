puts "Deleting everything..."

Photo.destroy_all
User.destroy_all
Destination.destroy_all

images = ["https://images.squarespace-cdn.com/content/v1/55ee34aae4b0bf70212ada4c/1577545161018-1F9Z9ZZQG9JO2O4WCWQX/ke17ZwdGBToddI8pDm48kLkXF2pIyv_F2eUT9F60jBl7gQa3H78H3Y0txjaiv_0fDoOvxcdMmMKkDsyUqMSsMWxHk725yiiHCCLfrh8O1z4YTzHvnKhyp6Da-NYroOW3ZGjoBKy3azqku80C789l0iyqMbMesKd95J-X4EagrgU9L3Sa3U8cogeb0tjXbfawd0urKshkc5MgdBeJmALQKw/keith-zhu-qaNcz43MeY8-unsplash+%281%29.jpg?format=1500w",
        "https://rimage.gnst.jp/livejapan.com/public/article/detail/a/00/02/a0002533/img/basic/a0002533_main.jpg?20210122155600&q=80&rw=750&rh=536",
        "https://upload.wikimedia.org/wikipedia/commons/3/32/20190616154621%21Echo_Park_Lake_with_Downtown_Los_Angeles_Skyline.jpg",
        "https://www.tripsavvy.com/thmb/Qog8dwgxpHJvibVZaon51uMo4D8=/3435x2576/smart/filters:no_upscale()/palace-of-westminster-in-london-at-sunset--872038342-5b9b082b46e0fb00501f5ddd.jpg",
        "https://www.fodors.com/wp-content/uploads/2019/04/HERO_BangkokTips_Hero_shutterstock_367503629.jpg",
        "https://api-abroad.sfo2.cdn.digitaloceanspaces.com/images/_1200x675_crop_center-center_82_line/france-paris-tour-eiffel-77676271.jpg",
        "https://thumbs-prod.si-cdn.com/4-T69BwTwzDuhdBouCOPPcbCW0I=/1072x500/https://public-media.smithsonianjourneys.org/filer/90/5e/905e6231-a574-4818-9cb9-69393ad16294/ita_florence_panorama_ist_488354630.jpg",
        "https://media.shermanstravel.com/Advice/thumb/large/1920x1080_parthenonathens_photocreditkelsychauvin-jpg.jpg",
        "https://montessori-ami.org/sites/default/files/images/countries/russia.jpg",
        "https://media1.s-nbcnews.com/j/newscms/2018_30/1348858/nashville-today-180626-main_5ce49153f454bc3be7db8038da04ea47.fit-760w.jpg",
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTfLLr7VKHrgo30eyUzgLX98I5eQoVrNFGWBA&usqp=CAU",
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQxL8cUOPoWQYd96gw6zutBsFYrJz8jyD45XQ&usqp=CAU",
        "https://lp-cms-production.imgix.net/image_browser/Old_quarter_Hoi_An_vietnam.jpg",
        "https://www.cunard.com/content/dam/cunard/inventory-assets/ports/BCN/BCN.jpg.1533896429294.image.750.563.low.jpg",
        "https://img.timeinc.net/time/photoessays/2010/smart_cities/smart_cities_01.jpg",
        "https://media.timeout.com/images/105404079/image.jpg",
        "https://images.squarespace-cdn.com/content/v1/5771ac0259cc68d56daf44ee/1540437397899-ZMDSM0IAJQRS8QX0D5FP/ke17ZwdGBToddI8pDm48kBFUKT45a8pb_pY0UIHKymVZw-zPPgdn4jUwVcJE1ZvWQUxwkmyExglNqGp0IvTJZUJFbgE-7XRK3dMEBRBhUpwz3OH_aFO-YYWP7wjOFtEbUgl4LOFMIs_Z4pgzeVmQB9CYjQcFKmkUrzpFfhtB7LY/language+learning+adventure+cover+page.jpg"
    ]

comments = [
    "I loved this trip! The food, hotels, and sights were all perfect. Can't wait to go back again!",
    "What can I say about this last month. This was one of the best trips of my life. I need to get back tomorrow!",
    "The flight over wasn't perfect, but let me tell you, the city was the exact opposite! Would do it again in a heart beat.",
    "Literally thinking about moving here. The most fun I've ever had on a trip. Why did it have to end!!",
    "One of the stops on our backpacking trip. I think the pic speaks for itself!",
    "Told all my friends about this city. Going to be coming back soon with all of them!"
]

puts "Seeding everything..."
5.times do 
    user = User.create!(
        name: Faker::Name.name , 
        age: Faker::Number.number(digits: 2), 
        email: Faker::Internet.email
    )


5.times do 
    destination = Destination.create!(
        city: Faker::Address.city
    )

    
5.times do 
    photo = Photo.create!(
        image_url: images[rand(images.length)],
        location: Faker::Address.city,
        # destination.city
        description: comments[rand(comments.length)],
        date: Faker::Date.between(from: '2005-09-23', to: '2020-01-21'),
        likes: Faker::Number.number(digits: 3),
        user: user,
        destination: destination,
    )
end 
end 
end   
            
    puts "Done!"
