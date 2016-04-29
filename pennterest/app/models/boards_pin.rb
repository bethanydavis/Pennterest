# join table for board and pin models
class BoardsPin < ActiveRecord::Base
  belongs_to :board
  belongs_to :pin
end
