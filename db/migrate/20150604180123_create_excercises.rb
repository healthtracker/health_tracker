class CreateExcercises < ActiveRecord::Migration
  def change
    create_table :excercises do |t|
      t.string :description
      t.float :calories_burned
      t.integer :excercise_type_id
      t.date :date

      t.timestamps null: false
    end
  end
end
