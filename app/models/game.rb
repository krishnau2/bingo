class Game < ActiveRecord::Base

  has_many :boards

  def generate_board
    user_id = 1
    self.boards << Board.generate(user_id)
  end
end
