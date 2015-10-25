class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.references :user

      t.timestamps null: false
    end
  end
end
