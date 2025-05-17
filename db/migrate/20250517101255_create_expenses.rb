class CreateExpenses < ActiveRecord::Migration[7.1]
  def change
    create_table :expenses do |t|
      t.integer :amount
      t.string :category
      t.string :memo
      t.date :spent_on

      t.timestamps
    end
  end
end
