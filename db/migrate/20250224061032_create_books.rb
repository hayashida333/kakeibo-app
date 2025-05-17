class CreateBooks < ActiveRecord::Migration[7.1]
  def change
    create_table :books do |t|
      t.integer :inout
      t.string :category
      t.integer :yea
      t.integer :month
      t.integer :amount

      t.timestamps
    end
  end
end
