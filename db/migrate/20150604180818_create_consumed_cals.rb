class CreateConsumedCals < ActiveRecord::Migration
  def change
    create_table :consumed_cals do |t|
      t.float :calories
      t.date :calories_on

      t.timestamps null: false
    end
  end
end
