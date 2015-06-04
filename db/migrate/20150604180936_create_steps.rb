class CreateSteps < ActiveRecord::Migration
  def change
    create_table :steps do |t|
      t.integer :steps
      t.date :stepped_on

      t.timestamps null: false
    end
  end
end
