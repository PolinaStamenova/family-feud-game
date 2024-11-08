class GamesController < ApplicationController
  def new
  end
  
  def create
    @game = Game.new

    if @game.save
      redirect_to new_team_path(game_id: @game.id)
    else
      render :new
    end
  end

  def start
    @game = Game.find(params[:id])
  end
end
