class CreateBoardsPins < ActiveRecord::Migration
  def change
    create_table :boards_pins do |t|
      t.references :board, index: true, foreign_key: true
      t.references :pin, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
