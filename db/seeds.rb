# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Question.destroy_all

50.times do |index|
  Question.create!(question_content: Faker::Movies::BackToTheFuture.quote,
                                    user_id: 2)
end

p "Created #{Question.count} questions"
ids = []
Question.all.each do |question|
  ids.push(question.id)
end
#
Answer.destroy_all

250.times do |index|
  Answer.create!(answer: Faker::Hacker.say_something_smart + " " + Faker::TvShows::DumbAndDumber.quote,
                        rating: rand(1..5),
                        question_id: ids.sample,
                        user_id: 1)
end
#
p "Created #{Answer.count} reviews"
