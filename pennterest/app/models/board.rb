class Board < ActiveRecord::Base
  belongs_to :user
  has_many :boards_pins, dependent: :destroy
  has_many :pinss, through: :boards_pins
end
