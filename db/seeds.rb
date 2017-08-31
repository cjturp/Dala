# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
UserAnswer.destroy_all

 new_users = User.create(name: Faker::Name.name, email: Faker::Internet.email, password: "password12")


new_game = Game.create(name: "new game", instructions: "Press button to play game", subject: "Math")


new_gamelevel = GameLevel.create(level: 1, game: new_game)
new_gamelevel = GameLevel.create(level: 2, game: new_game)

new_question = Question.create(title: "Q1", body: "What is 3 squared?", subject: "Math", game_level: new_gamelevel)


new_panswer = PossibleAnswer.create(answer: "HH & TCOS", question: new_question)
new_panswer = PossibleAnswer.create(answer: "9", correct_ans: true, question: new_question)


new_answers = new_users.user_answers.create(answer_id: new_panswer.id)

puts "Done"
