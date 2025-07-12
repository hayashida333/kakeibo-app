class Book < ApplicationRecord
  validates :year, presence: true
  validates :month, presence: true
  validates :inout, presence: true
  validates :category, presence: true
  validates :amount, presence: true

  # 収入: inout = 1, 支出: inout = 2
  scope :incomes, -> { where(inout: 1) }
  scope :expenses, -> { where(inout: 2) }
  scope :for_month, ->(year, month) { where(year: year, month: month) }

  # 月ごとの収入合計
  def self.total_income_for_month(year, month)
    for_month(year, month).incomes.sum(:amount)
  end

  # 月ごとの支出合計
  def self.total_expense_for_month(year, month)
    for_month(year, month).expenses.sum(:amount)
  end

  # 月ごとの収支バランス
  def self.balance_for_month(year, month)
    total_income_for_month(year, month) - total_expense_for_month(year, month)
  end

  # 月ごとの支出をカテゴリー別に集計
  def self.expenses_by_category_for_month(year, month)
    for_month(year, month).expenses
                          .group(:category)
                          .sum(:amount)
  end

  # 月ごとの収入をカテゴリー別に集計
  def self.incomes_by_category_for_month(year, month)
    for_month(year, month).incomes
                          .group(:category)
                          .sum(:amount)
  end
end
