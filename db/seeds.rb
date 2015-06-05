# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

10.times do
  Step.create(steps:Faker::Number.number(5), stepped_on:Faker::Date.backward(30))
  Exercise.create(description:Faker::Lorem.word, calories_burned:Faker::Number.number(4), date:Faker::Date.backward(30))
  ConsumedCal.create(calories:Faker::Number.number(4), calories_on:Faker::Date.backward(30))
  Weight.create(weight:(100..300).to_a.sample, weighed_on:Faker::Date.backward(30))
end

3.times
Step.create(steps:Faker::Number.number(5), stepped_on:Time.now)
Exercise.create(description:Faker::Lorem.word, calories_burned:Faker::Number.number(4), date:Time.now)
ConsumedCal.create(calories:Faker::Number.number(4), calories_on:Faker::Date.backward(30))
