# migration to create pins
class CreatePins < ActiveRecord::Migration
  def change
    create_table :pins do |t|
      t.string :caption
      t.string :category
      t.string :source

      t.timestamps null: false
    end
  end
end
