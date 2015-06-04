class CreateExercises < ActiveRecord::Migration
  def change
    create_table :exercises do |t|
      t.string :description
      t.float :calories_burned
      t.integer :exercise_type_id
      t.date :date

      t.timestamps null: false
    end
  end
end
