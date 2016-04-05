# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


6.times do
  school = School.create!(name: Faker::Company.name + " School",
                          motto: Faker::Company.catch_phrase,
                          location: Faker::Address.city)

  rand(20..50).times do
    Student.create!(name: Faker::Name.name, age: rand(18..50), school_id: school.id)
  end

  rand(1..8).times do
    teacher = Teacher.create!(name: Faker::Name.name,
                              age: rand(19..99),
                              school_id: school.id)
  end
end
