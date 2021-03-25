class CreateSpendings < ActiveRecord::Migration[5.2]
  def change
    create_table :spendings do |t|
      t.integer :user_id
      t.numeric :cost
      t.date :date

      t.timestamps
    end
  end
end
