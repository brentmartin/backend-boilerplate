# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


5.times do
  school = School.create!(name: Faker::Company.name + " School",
                          motto: Faker::Company.catch_phrase,
                          location: Faker::Address.city)

  rand(2..4).times do
    teacher = Teacher.create!(name: "Professor " + Faker::Name.name,
                              age: rand(19..99),
                              school_id: school.id)

    rand(4..10).times do
      Student.create!(name: Faker::Name.name,
                      age: rand(18..50),
                      school_id: school.id,
                      teacher_id: teacher.id)
    end
  end
end
