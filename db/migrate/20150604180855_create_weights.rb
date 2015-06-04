class CreateWeights < ActiveRecord::Migration
  def change
    create_table :weights do |t|
      t.float :weight
      t.date :weighed_on

      t.timestamps null: false
    end
  end
end
