require 'test_helper'

class GameLevelTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
   def setup

      @game = Game.create(name: "Game1")
      puts "Game saved? #{@game.persisted?}"
      @gamelevel = GameLevel.create(level: 1, game: @game)
      puts "Game level saved? #{@gamelevel.persisted?}"

    end

    test "A game has many Questions" do
      @gamelevel.save!
      @gamelevel.questions.create(title: "answer1")
      @gamelevel.questions.create(title: "answer2")
      puts @gamelevel.questions.count
      p assert @gamelevel.questions.count == 2
    end
end
