class PlayerController < ApplicationController

  def index
    render json: serialized_data
  end

  private 

  def find_players
    Player.all
  end

  def serialized_data
    PlayerSerializer.new(find_players).serializable_hash
  end
end
