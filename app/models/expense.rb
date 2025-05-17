class Expense < ApplicationRecord
    validates :amount, numericality: { greater_than: 0 }
    validates :category, presence: true
    validates :spent_on, presence: true
  end