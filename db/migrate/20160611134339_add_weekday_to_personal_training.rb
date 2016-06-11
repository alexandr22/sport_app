class AddWeekdayToPersonalTraining < ActiveRecord::Migration
  def change
    add_column :personal_trainings, :weekday, :string
  end
end
