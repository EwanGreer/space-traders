# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

10.times do
  System.create!(
    symbol: Faker::Space.galaxy,  # Random alphanumeric string for symbol
    sector_symbol: Faker::Alphanumeric.alpha(number: 3),  # Random sector symbol
    constellation: Faker::Lorem.word,  # Random constellation name
    name: Faker::Space.galaxy,  # Random planet name from Star Wars (or you could use any other source)
    system_type: Faker::Lorem.word,  # Random type
    x: Faker::Number.between(from: -1000, to: 1000),  # Random X coordinate
    y: Faker::Number.between(from: -1000, to: 1000)   # Random Y coordinate
  )
end

puts "Created 10 systems."
# Create some factions
5.times do
  Faction.create!(
    symbol: Faker::Alphanumeric.alphanumeric(number: 3),
    name: Faker::Company.name,
    headquarters_id: System.first.id # Reference system
  )
end

# Create users
10.times do
  user = User.create!(
    email_address: Faker::Internet.email,
    password: "password123",
    username: Faker::Internet.username
  )

  # Create agents associated with the user
  3.times do
    user.agents.create!(
      symbol: Faker::Movies::StarWars.call_sign,
      account_id: Faker::Number.number(digits: 10),
      credits: Faker::Number.number(digits: 4),
      faction_id: Faction.first.id, # Assuming you have 5 factions
      headquarters_id: System.first.id # Reference system
    )
  end
end
