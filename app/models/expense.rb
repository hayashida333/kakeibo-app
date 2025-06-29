class Expense < ApplicationRecord
  # バリデーション
  validates :amount, numericality: { greater_than: 0 }
  validates :category, presence: true
  validates :spent_on, presence: true

  # クラスメソッド: 月ごとの合計金額を計算
  def self.total_for_month(year, month)
    start_date = Date.new(year, month, 1)
    end_date = start_date.end_of_month

    where(spent_on: start_date..end_date).sum(:amount)
  end
end
