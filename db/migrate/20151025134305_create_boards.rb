class CreateBoards < ActiveRecord::Migration
  def change
    create_table :boards do |t|
      t.references :user
      t.references :game
      t.integer :a
      t.integer :b
      t.integer :c
      t.integer :d
      t.integer :e
      t.boolean :a_taken, :default => false
      t.boolean :b_taken, :default => false
      t.boolean :c_taken, :default => false
      t.boolean :d_taken, :default => false
      t.boolean :e_taken, :default => false

      t.timestamps null: false
    end
  end
end
