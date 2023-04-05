class CreateRounds < ActiveRecord::Migration[6.1]
  def change
    create_table :rounds do |t|
      t.string :course
      t.string :weather
      t.date :date
      t.integer :hole1
      t.integer :hole2
      t.integer :hole3
      t.integer :hole4
      t.integer :hole5
      t.integer :hole6
      t.integer :hole7
      t.integer :hole8
      t.integer :hole9

      t.timestamps
    end
  end
end
