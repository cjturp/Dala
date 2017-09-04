# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
PossibleAnswer.destroy_all
Question.destroy_all
GameLevel.destroy_all
Game.destroy_all


new_users = User.create(name: Faker::Name.name, email: Faker::Internet.email, password: "password12")


new_game = Game.create(name: "new game", instructions: "Press button to play game", subject: "Math")


new_gamelevel = GameLevel.create(level: 1, game: new_game) # Game Level 1

new_question1 = Question.create(title: "Newton and Gravity", body: "What is a formula for Newton's Laws of Motion?", subject: "Science", game_level: new_gamelevel) #Question 1

new_panswer = PossibleAnswer.create(answer: "Force = Mass x Acceleration",explanation: " #Explanation: Newton's Second Law of Motion states that the force acting on any object is equal to its mass times its acceleration", correct_ans: true, question: new_question1) #Answer 1 (correct)

new_panswer = PossibleAnswer.create(answer: "Energy = Mass x Speed of Light Squared", question: new_question1) #Answer 2

new_panswer = PossibleAnswer.create(answer: "Pressure = Mass / Volume", question: new_question1) #Answer 3

new_panswer = PossibleAnswer.create(answer: "Speed = Distance / Time",  question: new_question1) #Answer 4

#Explanation: Newton's Second Law of Motion states that the force acting on any object is equal to its mass times its acceleration

new_question2 = Question.create(title: "Speed", body: "What equals speed?", subject: "Science", game_level: new_gamelevel) #Question 2

new_panswer = PossibleAnswer.create(answer: "Distance plus Time", question: new_question2) #Answer1

new_panswer = PossibleAnswer.create(answer: "Time / Distance", question: new_question2) #Answer 2

new_panswer = PossibleAnswer.create(answer: "Distance / Time", explanation: "#Explanation: Average speed equals the distance traveled over time spanned", correct_ans: true, question: new_question2) #Answer 3 (correct)

new_panswer = PossibleAnswer.create(answer: "Pressure times Volume",  question: new_question2) #Answer 4

#Explanation: Average speed equals the distance traveled over time spanned

new_answers = new_users.user_answers.create(answer_id: new_panswer.id)

puts "Done"
