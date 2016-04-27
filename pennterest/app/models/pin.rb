# representation of an image with a caption, which can be pinned to a Board
class Pin < ActiveRecord::Base
  has_many :boards_pins, dependent: :destroy
  has_many :boards, through: :boards_pins

  has_attached_file :image, styles: {
    thumb: '100x100>',
    square: '150x150>',
    medium: '300x300>'
  }

  # Validate the attached image is image/jpg, image/png, etc
  validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/
end
