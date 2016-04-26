# representation of an image with a caption, which can be pinned to a Board
class Pin < ActiveRecord::Base
  has_many :boards_pins, dependent: :destroy
  has_many :boards, through: :boards_pins

  has_attached_file :image
end
