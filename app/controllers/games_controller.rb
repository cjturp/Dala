class GamesController < ApplicationController
  before_action :set_game, only: [:show, :edit, :update, :destroy]

  # GET /games
  # GET /games.json
  def index
    @games = Game.all
  end

  # GET /games/1
  # GET /games/1.json

  def show

    @games = Game.find(3)
    @gamelevel = GameLevel.find(params[:id])
    @question = @question.gamelevels


    @game = Game.find_by_name("Physics")

    if params[:question_id].present?
      @question = Question.find_by_id params[:question_id]
      @current_question_id = params[:question_id]
    else
      @question = current_user.current_level(@game).questions.limit(1).first
      @current_question_id = @question.id
    end
    @user = current_user

  end
  def level1
    @game = Game.find_by_name("Physics")
    if params[:question_id].present?
      @question = Question.find_by_id params[:question_id]
      @current_question_id = params[:question_id]
    else
      @question = GameLevel.find_by_level(1).questions.limit(1).first
      @current_question_id = @question.id
    end
    @user = current_user
  end

  def level2
    @game = Game.find_by_name("Physics")
    if params[:question_id].present?
      @question = Question.find_by_id params[:question_id]
      @current_question_id = params[:question_id]
    else
      @question = GameLevel.find_by_level(2).questions.limit(1).first
      @current_question_id = @question.id
    end
    @user = current_user
  end

  def level3
    @game = Game.find_by_name("Physics")
    if params[:question_id].present?
      @question = Question.find_by_id params[:question_id]
      @current_question_id = params[:question_id]
    else
      @question = GameLevel.find_by_level(3).questions.limit(1).first
      @current_question_id = @question.id
    end
    @user = current_user
  end

  def level4
    @game = Game.find_by_name("Physics")
    if params[:question_id].present?
      @question = Question.find_by_id params[:question_id]
      @current_question_id = params[:question_id]
    else
      @question = GameLevel.find_by_level(4).questions.limit(1).first
      @current_question_id = @question.id
    end
    @user = current_user
  end



  # GET /games/new
  def new
    @game = Game.new
  end

  # GET /games/1/edit
  def edit
  end

  # POST /games
  # POST /games.json
  def create
    @game = Game.new(game_params)

    respond_to do |format|
      if @game.save
        format.html { redirect_to @game, notice: 'Game was successfully created.' }
        format.json { render :show, status: :created, location: @game }
      else
        format.html { render :new }
        format.json { render json: @game.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /games/1
  # PATCH/PUT /games/1.json
  def update
    respond_to do |format|
      if @game.update(game_params)
        format.html { redirect_to @game, notice: 'Game was successfully updated.' }
        format.json { render :show, status: :ok, location: @game }
      else
        format.html { render :edit }
        format.json { render json: @game.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /games/1
  # DELETE /games/1.json
  def destroy
    @game.destroy
    respond_to do |format|
      format.html { redirect_to games_url, notice: 'Game was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_game
      @game = Game.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def game_params
      params.fetch(:game, {})
    end
end
