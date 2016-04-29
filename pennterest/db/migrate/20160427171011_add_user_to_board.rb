# add user to board
class AddUserToBoard < ActiveRecord::Migration
  def change
    add_reference :boards, :user, index: true, foreign_key: true
  end
end
