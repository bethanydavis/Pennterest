# migration to create users
class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :about_me

      t.timestamps null: false
    end
  end
end
