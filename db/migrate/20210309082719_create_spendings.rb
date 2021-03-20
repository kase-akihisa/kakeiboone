class CreateSpendings < ActiveRecord::Migration[5.2]
  def change
    create_table :spendings do |t|
      t.integer :user_id
      t.numeric :cost_house
      t.numeric :cost_utility
      t.numeric :cost_communications
      t.numeric :cost_travel
      t.numeric :cost_item
      t.numeric :cost_other
      t.date :date

      t.timestamps
    end
  end
end
