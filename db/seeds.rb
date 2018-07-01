# gardens = Garden.create!([{ name: 'Eden' }, { name: 'Rose Garden'}])
# create! will produce an error if there is an error
User.destroy_all
Garden.destroy_all
Plant.destroy_all
Collection.destroy_all

user = User.create!(username: 'SqueakyC', email: 'can@gmail.com', password: 'password')

# create 5 Gardens
5.times do
  garden = Garden.create!(name: Faker::Zelda.location, description: Faker::Lorem.sentence, user_id: user.id)

  # ...with 5 plants each
  5.times do
    Plant.create!(latin_name: Faker::Zelda.character, garden_id: garden, user_id: user.id)
  end

end

5.times do
  Collection.create!(name: Faker::Zelda.item, description: Faker::Lorem.sentence, user_id: user.id)
end
