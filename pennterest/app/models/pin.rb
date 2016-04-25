class Pin < ActiveRecord::Base
  has_many :boards_pins, dependent: :destroy
  has_many :boards, through: :boards_pins
end
