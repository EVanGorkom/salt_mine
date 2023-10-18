class PlayersController < ApplicationController
  def create
    player = Player.new(player_params)
    if player.save
      redirect_to "/players/#{player.id}"
    else
      # flash[:alert] = "Unable to register, Please choose a unique username."
      # redirect_to "/players/new"
    end
  end

  def show
    @player = Player.find(params[:id])
  end

  def new
  end

  private

  def player_params
    params.permit(:name, :username)
  end
end