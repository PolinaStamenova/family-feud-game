class TeamsController < ApplicationController
  def new
    @game = Game.find(params[:game_id])
  end

  def create
    game = Game.find(params[:game_id])
    team1 = game.teams.build(name: params[:teams][:team1][:name])
    team2 = game.teams.build(name: params[:teams][:team2][:name])

    if team1.save && team2.save
      # TODO: Fix path
      redirect_to start_game_game_path(game)
    else
      render :new
    end
  end
end

