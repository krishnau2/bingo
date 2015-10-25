class BoardsController < ApplicationController

  def index
    @board = Board.where(game_id: 1, user_id: 1)
    render json: @board
  end
end
