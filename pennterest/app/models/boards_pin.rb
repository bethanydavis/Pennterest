class BoardsPin < ActiveRecord::Base
  validates_uniqueness_of :pin_id, scope: :board_id
  belongs_to :board
  belongs_to :pin
end