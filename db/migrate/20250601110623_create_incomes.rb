class CreateIncomes < ActiveRecord::Migration[7.1]
  def change
    create_table :incomes do |t|
      t.integer :amount
      t.date :received_on

      t.timestamps
    end
  end
end
