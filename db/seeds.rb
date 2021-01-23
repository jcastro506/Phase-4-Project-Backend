# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Deleting everything..."

Photo.destroy_all
User.destroy_all
Destination.destroy_all


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
        image_url: Faker::Avatar.image,
        location: Faker::Address.city,
        # destination.city
        description: Faker::GreekPhilosophers.quote,
        date: Faker::Date.between(from: '1965-09-23', to: '2020-01-21'),
        likes: Faker::Number.number(digits: 3),
        user: user,
        destination: destination,
    )
end 
end 
end   
            
    puts "Done!"
