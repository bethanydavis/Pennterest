# represents a collection of a User's Pins related to a certain topic
class Board < ActiveRecord::Base
  belongs_to :user
  has_many :boards_pins, dependent: :destroy
  has_many :pins, through: :boards_pins
end
