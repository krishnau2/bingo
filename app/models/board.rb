class Board < ActiveRecord::Base
  belongs_to :game

  def self.number_to_fill
    (1..25).to_a.shuffle
  end

  def self.generate(user_id)
    number_array = number_to_fill
    
    5.times.map do | row |
      no = row * 5
      self.create(
          a: number_array[no],
          b: number_array[no+1],
          c: number_array[no+2],
          d: number_array[no+3],
          e: number_array[no+4],
          user_id: user_id
        )
    end
  end
end
