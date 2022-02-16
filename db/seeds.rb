require 'faker'

14.times do
  new_flat = Flat.new(name: Faker::JapaneseMedia::DragonBall.planet, address: Faker::Address.full_address, description: Faker::Movies::Ghostbusters.quote, price_per_night: rand(40..300), number_of_guests: rand(1..14))
  puts new_flat.valid?
  new_flat.save!
  puts Flat.last
end

puts 'done seeding'
