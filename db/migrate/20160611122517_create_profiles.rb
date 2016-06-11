class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.boolean :allow_create_training
      t.string :name
      t.integer :age
      t.integer :user_id
      t.boolean :is_trainer
      t.decimal :weight
      t.float :height
      t.integer :stage

      t.timestamps null: false
    end
  end
end
