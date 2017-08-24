require 'test_helper'

class QuestionTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  def setup
    @user = User.create(name: "User1")
    @game = Game.create(name: "Game1", user: @user)
    puts "Game saved? #{@game.persisted?}"
    @gamelevel = GameLevel.create(level: 1, game: @game)
    puts "Game level saved? #{@gamelevel.persisted?}"
    @question = Question.new(title: "Question1", game_level: @gamelevel)
    @exppoint = ExpPoint.create(points: 10, user: @user)
    puts "ExpPoint saved? #{@exppoint.persisted?}"
  end

  test "a question has many answers" do
    
    @question.save!
    @question.possible_answers.create(answer: "answer1")
    @question.possible_answers.create(answer: "answer2")
    puts @question.possible_answers.count
    p assert @question.possible_answers.count == 2
  end
end
