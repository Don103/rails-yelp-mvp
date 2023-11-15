# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end



# db/seeds.rb

# Clear existing records to avoid duplicates
Restaurant.destroy_all

# Seed 5 restaurants
5.times do |i|
  Restaurant.create!(
    name: "Restaurant #{i + 1}",
    address: "123 Main St, City #{i + 1}",
    phone_number: "555-123-#{i + 1}",
    category: ["chinese", "italian", "japanese", "french", "belgian"].sample
    # Add more attributes as needed
  )
end
