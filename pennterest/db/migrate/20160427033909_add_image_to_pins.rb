# add image to pins
class AddImageToPins < ActiveRecord::Migration
  def self.up
    add_attachment :pins, :image
  end

  def self.down
    remove_attachment :pins, :image
  end
end
