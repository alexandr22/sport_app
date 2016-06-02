class CreateExercises < ActiveRecord::Migration
  def change
    create_table :exercises do |t|
      t.string :name
      t.text :description
      t.integer :attempt
      t.integer :quantity
      t.integer :personal_training_id
      t.string :order_number_integer

      t.timestamps null: false
    end
  end
end
