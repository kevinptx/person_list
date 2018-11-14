require "faker"
Person.destroy_all
#Faker boolean.boolean

10.times do
  Person.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, age: Faker::Number.number(2), eye_color: Faker::Color.color_name, gender: Faker::Gender.type, alive: Faker::Boolean.boolean)
end

puts "seed successful"
