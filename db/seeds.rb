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


new_game = Game.create(name: "Physics", instructions: "Press button to play game", subject: "Math")


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
new_question3 = Question.create(title: "Molecules", body: "Molecules can form liquids, gases and what else?", subject: "Science", game_level: new_gamelevel) #Question 3

new_panswer = PossibleAnswer.create(answer: "Plasma", question: new_question3)

new_panswer = PossibleAnswer.create(answer: "Solids",explanation:"#Explanation: Molecules can form liquids, gases, and solids.
", correct_ans: true, question: new_question3)

new_panswer = PossibleAnswer.create(answer: "Organisms", question: new_question3)

new_panswer = PossibleAnswer.create(answer: "Toxic matter", question: new_question3)
#Explanation: Molecules can form liquids, gases, and solids.

new_question4 = Question.create(title: "Molecules", body: "What force occurs when an object rubs against another object?", subject: "Science", game_level: new_gamelevel) #Question 4

new_panswer = PossibleAnswer.create(answer: "Radiation", question: new_question4)

new_panswer = PossibleAnswer.create(answer: "Friction",explanation:"#Explanation: When an object is rubbed against another friction is created
", correct_ans: true, question: new_question4)

new_panswer = PossibleAnswer.create(answer: "Conduction", question: new_question4)

new_panswer = PossibleAnswer.create(answer: "Gravity", question: new_question4)

#Explanation: When an object is rubbed against another friction is created

new_question5 = Question.create(title: "Condensation", body: "What is condensation?", subject: "Science", game_level: new_gamelevel) #Question 5

new_panswer = PossibleAnswer.create(answer: "When gas turns into solid", question: new_question5)

new_panswer = PossibleAnswer.create(answer: "When a particle becomes charged", question: new_question5)

new_panswer = PossibleAnswer.create(answer: "When a solid turns into toxic waste", question: new_question5)

new_panswer = PossibleAnswer.create(answer: "When a gas turns into a liquid",explanation:"#Explanation: When a gas is condensed - such as when the surface of your Coke has droplets and becomes wet - it becomes liquid.
", correct_ans: true, question: new_question5)

#Explanation: When a gas is condensed - such as when the surface of your Coke has droplets and becomes wet - it becomes liquid.

#======

new_gamelevel2 = GameLevel.create(level: 2, game: new_game) # Game Level 2

new_question6 = Question.create(title: "Gassy Molecules", body: "How are molecules in gas?", subject: "Science", game_level: new_gamelevel2) #Question 1

new_panswer = PossibleAnswer.create(answer: "Far apart",explanation:"#Explanation: Molecules in gas form are spread out as it allows them to move freely between collisions
", correct_ans: true, question: new_question6)

new_panswer = PossibleAnswer.create(answer: "Close together", question: new_question6)

new_panswer = PossibleAnswer.create(answer: "Tight and pulling on each other", question: new_question6)

new_panswer = PossibleAnswer.create(answer: "Nonexistent", question: new_question6)

new_panswer = PossibleAnswer.create(answer: "Very light", question: new_question6)

#Explanation: Molecules in gas form are spread out as it allows them to move freely between collisions

new_question7 = Question.create(title: "Condensation", body: "What is condensation?", subject: "Science", game_level: new_gamelevel2) #Question 2

new_panswer = PossibleAnswer.create(answer: "When gas turns into solid", question: new_question7)

new_panswer = PossibleAnswer.create(answer: "When a particle becomes charged", question: new_question7)

new_panswer = PossibleAnswer.create(answer: "When a solid turns into toxic waste", question: new_question7)

new_panswer = PossibleAnswer.create(answer: "When a gas turns into a liquid",explanation:"#Explanation: When a gas is condensed - such as when the surface of your Coke has droplets and becomes wet - it becomes liquid.
", correct_ans: true, question: new_question7)

#Explanation: When a gas is condensed - such as when the surface of your Coke has droplets and becomes wet - it becomes liquid.

new_question8 = Question.create(title: "Thermal Energy", body: "What type of energy does kinetic energy have?” Hint: This type of energy is related to temperature.", subject: "Science", game_level: new_gamelevel2) #Question 3

new_panswer = PossibleAnswer.create(answer: "Potential", question: new_question8)

new_panswer = PossibleAnswer.create(answer: "Very hot", question: new_question8)

new_panswer = PossibleAnswer.create(answer: "Kinetic",explanation:"#Explanation: Thermal Energy is the internal energy of an object due to the kinetic energy of its atoms caused by movement. The atoms of a hotter object have a greater kinetic energy, and hence a greater thermal energy, than a colder one.
", correct_ans: true, question: new_question8)

new_panswer = PossibleAnswer.create(answer: "Cold", question: new_question8)

new_panswer = PossibleAnswer.create(answer: "Has no energy", question: new_question8)

#Explanation: Thermal Energy is the internal energy of an object due to the kinetic energy of its atoms caused by movement. The atoms of a hotter object have a greater kinetic energy, and hence a greater thermal energy, than a colder one.

new_question9 = Question.create(title: "Speed", body: "What equals speed?", subject: "Science", game_level: new_gamelevel2) #Question 2

new_panswer = PossibleAnswer.create(answer: "Distance plus Time", question: new_question9) #Answer1

new_panswer = PossibleAnswer.create(answer: "Time / Distance", question: new_question9) #Answer 2

new_panswer = PossibleAnswer.create(answer: "Distance / Time",explanation:"#Explanation: Average speed equals the distance traveled over time spanned
", correct_ans: true, question: new_question2) #Answer 3 (correct)

new_panswer = PossibleAnswer.create(answer: "Pressure times Volume", question: new_question9) #Answer 4

#Explanation: Average speed equals the distance traveled over time spanned

#Explanation:

new_question10 = Question.create(title: "Energy", body: " What is the energy that motion or position gives to an object?", subject: "Science", game_level: new_gamelevel2) #Question 5

new_panswer = PossibleAnswer.create(answer: "Thermal energy", question: new_question10)

new_panswer = PossibleAnswer.create(answer: "Electrical energy", question: new_question10)

new_panswer = PossibleAnswer.create(answer:"Sound energy", question: new_question10)

new_panswer = PossibleAnswer.create(answer: "Potential energy", question: new_question10)

new_panswer = PossibleAnswer.create(answer: "Mechanical energy",explanation:"#Explanation: Mechanical energy is the energy associated with the motion and position of an object. It is also the sum of kinetic and potential energy in an object that is being used to do work. In baseball, when you hit the ball with the bat you are using the mechanical energy in the bat and transfer it to the ball sending it upward into the air and hopefully resulting in a home run!
", correct_ans: true, question: new_question10)

#Explanation: Mechanical energy is the energy associated with the motion and position of an object. It is also the sum of kinetic and potential energy in an object that is being used to do work. In baseball, when you hit the ball with the bat you are using the mechanical energy in the bat and transfer it to the ball sending it upward into the air and hopefully resulting in a home run!

#======

new_gamelevel3 = GameLevel.create(level: 3, game: new_game) # Game Level 3

new_question11 = Question.create(title: "Changes", body: "A change in matter that does not form a different kind of matter is called:", subject: "Science", game_level: new_gamelevel3) #Question 1

new_panswer = PossibleAnswer.create(answer: "Physical Change",explanation:"#Explanation: A change in matter that does not change the matter’s composition or create an entirely new kind of matter is a physical change. An example of this can be when a candle melts. The candle changes form but does not become something else entirely.
", correct_ans: true, question: new_question11)

new_panswer = PossibleAnswer.create(answer: "State Change", question: new_question11)

new_panswer = PossibleAnswer.create(answer: "Energy Change", question: new_question11)

new_panswer = PossibleAnswer.create(answer: "Chemical Change", question: new_question11)

new_panswer = PossibleAnswer.create(answer: "Kinetic Change", question: new_question11)

#Explanation: A change in matter that does not change the matter’s composition or create an entirely new kind of matter is a physical change. An example of this can be when a candle melts. The candle changes form but does not become something else entirely.

new_question12 = Question.create(title: "Energy and Height", body: "As height increases, so does what type of energy?", subject: "Science", game_level: new_gamelevel3) #Question 2

new_panswer = PossibleAnswer.create(answer: "Kinetic Energy", question: new_question12)

new_panswer = PossibleAnswer.create(answer: "Electric Energy", question: new_question12)

new_panswer = PossibleAnswer.create(answer: "Thermal Energy", question: new_question12)

new_panswer = PossibleAnswer.create(answer: "Potential Energy",explanation:"#Explanation: Potential energy is the energy possessed by a body by virtue of its position relative to others.
", correct_ans: true, question: new_question12)

new_panswer = PossibleAnswer.create(answer: "Chemical Energy", question: new_question12)

#Explanation: Potential energy is the energy possessed by a body by virtue of its position relative to others.

new_question13 = Question.create(title: "Newton and Gravity", body: "What is a formula for Newton's Laws of Motion?", subject: "Science", game_level: new_gamelevel3) #Question 3

new_panswer = PossibleAnswer.create(answer: "Force = Mass x Acceleration",explanation:"#Explanation: Molecules can form liquids, gases, and solids.
", correct_ans: true, question: new_question3) #Answer 1 (correct)

new_panswer = PossibleAnswer.create(answer: "Energy = Mass x Speed of Light Squared", question: new_question3) #Answer 2

new_panswer = PossibleAnswer.create(answer: "Pressure = Mass / Volume", question: new_question3) #Answer 3

new_panswer = PossibleAnswer.create(answer: "Speed = Distance / Time", question: new_question3) #Answer 4

#Explanation: Newton's Second Law of Motion states that the force acting on any object is equal to its mass times its acceleration

new_question14 = Question.create(title: "Molecules", body: "Molecules can form liquids, gases and what else?", subject: "Science", game_level: new_gamelevel3) #Question 4

new_panswer = PossibleAnswer.create(answer: "Plasma", question: new_question14)

new_panswer = PossibleAnswer.create(answer: "Solids",explanation:"#Explanation: Molecules can form liquids, gases, and solids.
", correct_ans: true, question: new_question14)

new_panswer = PossibleAnswer.create(answer: "Organisms", question: new_question14)

new_panswer = PossibleAnswer.create(answer: "Toxic matter", question: new_question14)
#Explanation: Molecules can form liquids, gases, and solids.

new_panswer = PossibleAnswer.create(answer: "Electricity", question: new_question4)
#Explanation: Molecules can form liquids, gases, and solids.

new_question15 = Question.create(title: "Energy in Motion", body: "What is energy in motion called?", subject: "Science", game_level: new_gamelevel3) #Question 5

new_panswer = PossibleAnswer.create(answer: "Potential Energy", question: new_question15)

new_panswer = PossibleAnswer.create(answer: "Open Circuit", question: new_question15)

new_panswer = PossibleAnswer.create(answer: "Chemical Energy", question: new_question15)

new_panswer = PossibleAnswer.create(answer: "Mechanical Energy", question: new_question15)

new_panswer = PossibleAnswer.create(answer: "Kinetic Energy",explanation:"#Explanation: Energy in motion is called kinetic energy. Windmills use this type of energy to grind grain into flour.
", correct_ans: true, question: new_question15)

#Explanation: Energy in motion is called kinetic energy. Windmills use this type of energy to grind grain into flour.

new_question16 = Question.create(title: "Units of Energy", body: "Which of these is a unit of electrical energy?", subject: "Science", game_level: new_gamelevel3) #Question 6

new_panswer = PossibleAnswer.create(answer: "Foot", question: new_question16)

new_panswer = PossibleAnswer.create(answer: "Cubic meter", question: new_question16)

new_panswer = PossibleAnswer.create(answer: "Volt",explanation:"#Explanation: A volt is a unit of electrical energy. It takes about 220 volts to power a TV.
", correct_ans: true, question: new_question16)

new_panswer = PossibleAnswer.create(answer: "Miles per hour", question: new_question16)

new_panswer = PossibleAnswer.create(answer: "Celsius", question: new_question16)

#Explanation: A volt is a unit of electrical energy. It takes about 220 volts to power a TV.

new_question17 = Question.create(title: "Condensation", body: "What is condensation?", subject: "Science", game_level: new_gamelevel3) #Question 3

new_panswer = PossibleAnswer.create(answer: "When gas turns into solid", question: new_question17)

new_panswer = PossibleAnswer.create(answer: "When a particle becomes charged", question: new_question17)

new_panswer = PossibleAnswer.create(answer: "When a solid turns into toxic waste", question: new_question17)

new_panswer = PossibleAnswer.create(answer: "When a gas turns into a liquid",explanation:"#Explanation: When a gas is condensed - such as when the surface of your Coke has droplets and becomes wet - it becomes liquid.
", correct_ans: true, question: new_question17)

#Explanation: When a gas is condensed - such as when the surface of your Coke has droplets and becomes wet - it becomes liquid.

#======

new_gamelevel4 = GameLevel.create(level: 4, game: new_game) # Game Level 4

# new_question21 = Question.create(title: "Newton and Gravity", body: "What is a formula for Newton's Laws of Motion?", subject: "Science", game_level: new_gamelevel4) #Question 1
#
# new_panswer = PossibleAnswer.create(answer: "Force = Mass x Acceleration",explanation:"#Explanation: Newton's Second Law of Motion states that the force acting on any object is equal to its mass times its acceleration
# ", correct_ans: true, question: new_question21) #Answer 1 (correct)
#
# new_panswer = PossibleAnswer.create(answer: "Energy = Mass x Speed of Light Squared", question: new_question21) #Answer 2
#
# new_panswer = PossibleAnswer.create(answer: "Pressure = Mass / Volume", question: new_question21) #Answer 3
#
# new_panswer = PossibleAnswer.create(answer: "Speed = Distance / Time", question: new_question21) #Answer 4

#Explanation: Newton's Second Law of Motion states that the force acting on any object is equal to its mass times its acceleration
new_question19 = Question.create(title: "Momentum", body: "Momentum is equal to:", subject: "Science", game_level: new_gamelevel4) #Question 2

new_panswer = PossibleAnswer.create(answer: "Gravity", question: new_question19)

new_panswer = PossibleAnswer.create(answer: "Inertia of an object", question: new_question19)

new_panswer = PossibleAnswer.create(answer: "Force exerted by an object", question: new_question19)

new_panswer = PossibleAnswer.create(answer: "Mass times velocity",explanation:"#Explanation: Momentum is equal to the mass times velocity of an object.
", correct_ans: true, question: new_question19)

new_panswer = PossibleAnswer.create(answer: "A moment in time", question: new_question19)

#Explanation: Momentum is equal to the mass times velocity of an object.

new_question20 = Question.create(title: "Condensation", body: "What is condensation?", subject: "Science", game_level: new_gamelevel4) #Question 3

new_panswer = PossibleAnswer.create(answer: "When gas turns into solid", question: new_question20)

new_panswer = PossibleAnswer.create(answer: "When a particle becomes charged", question: new_question20)

new_panswer = PossibleAnswer.create(answer: "When a solid turns into toxic waste", question: new_question20)

new_panswer = PossibleAnswer.create(answer: "When a gas turns into a liquid",explanation:"#Explanation: When a gas is condensed - such as when the surface of your Coke has droplets and becomes wet - it becomes liquid.
", correct_ans: true, question: new_question20)

#Explanation: When a gas is condensed - such as when the surface of your Coke has droplets and becomes wet - it becomes liquid.

new_question18 = Question.create(title: "Floaties", body: "Items that float have a property called:", subject: "Science", game_level: new_gamelevel4) #Question 4

new_panswer = PossibleAnswer.create(answer: "Weight", question: new_question18)

new_panswer = PossibleAnswer.create(answer: "Buoyancy",explanation:"#Explanation: Buoyancy describes an object’s tendency to float in water or other fluids.
", correct_ans: true, question: new_question18)

new_panswer = PossibleAnswer.create(answer: "Height", question: new_question18)

new_panswer = PossibleAnswer.create(answer: "Flexibility", question: new_question18)

new_panswer = PossibleAnswer.create(answer: "Floatie", question: new_question18)

#Explanation: Buoyancy describes an object’s tendency to float in water or other fluids.

new_question22 = Question.create(title: "Light: The Speedy Traveler", body: "Light travels in a ______ line", subject: "Science", game_level: new_gamelevel4) #Question 5

new_panswer = PossibleAnswer.create(answer: "Crooked", question: new_question22)

new_panswer = PossibleAnswer.create(answer: "Zigzagging", question: new_question22)

new_panswer = PossibleAnswer.create(answer: "Undulating", question: new_question22)

new_panswer = PossibleAnswer.create(answer: "Random", question: new_question22)

new_panswer = PossibleAnswer.create(answer: "Straight",explanation:"#Explanation: Light travels in a straight line.", correct_ans: true, question: new_question22)

#Explanation: Light travels in a straight line.

new_question23 = Question.create(title: "Magnetic Materials", body: "What are the magnetic materials?", subject: "Science", game_level: new_gamelevel4) #Question 6

new_panswer = PossibleAnswer.create(answer: "Plastic and Clay", question: new_question23)

new_panswer = PossibleAnswer.create(answer: "Paper and Cloth", question: new_question23)

new_panswer = PossibleAnswer.create(answer: "Sugar and Ice", question: new_question23)

new_panswer = PossibleAnswer.create(answer: "Plasma and X-Ray", question: new_question23)

new_panswer = PossibleAnswer.create(answer: "Steel and Iron", explanation: "#Explanation: Metals are magnetic materials.", correct_ans: true, question: new_question23)

#Explanation: Metals are magnetic materials.

new_question24 = Question.create(title: "Energy and Height", body: "As heigh increases, so does what type of energy?", subject: "Science", game_level: new_gamelevel4) #Question 7

new_panswer = PossibleAnswer.create(answer: "Kinetic Energy", question: new_question24)

new_panswer = PossibleAnswer.create(answer: "Electric Energy", question: new_question24)

new_panswer = PossibleAnswer.create(answer: "Thermal Energy", question: new_question24)

new_panswer = PossibleAnswer.create(answer: "Potential Energy",explanation:"#Explanation: Potential energy is the energy possessed by a body by virtue of its position relative to others.
", correct_ans: true, question: new_question24)

new_panswer = PossibleAnswer.create(answer: "Chemical Energy", question: new_question24)

#Explanation: Potential energy is the energy possessed by a body by virtue of its position relative to others.

new_question25 = Question.create(title: "Light Blockers", body: "What are materials that block light called?", subject: "Science", game_level: new_gamelevel4) #Question 8

new_panswer = PossibleAnswer.create(answer: "Invisible", question: new_question25)

new_panswer = PossibleAnswer.create(answer: "Translucent", question: new_question25)

new_panswer = PossibleAnswer.create(answer: "Fuzzy", question: new_question25)

new_panswer = PossibleAnswer.create(answer: "Dark", question: new_question25)

new_panswer = PossibleAnswer.create(answer: "Opaque", explanation: "#Explanation: Opaque objects are able to block light. Your curtain’s opacity allows it to block sunlight and prevent the light from entering your room.
",correct_ans: true, question: new_question25)

#Explanation: Opaque objects are able to block light. Your curtain’s opacity allows it to block sunlight and prevent the light from entering your room.

new_answers = new_users.user_answers.create(answer_id: new_panswer.id)

puts "Done"
