class DashboardController < ApplicationController
  def index
    @year = params[:year]&.to_i || Date.today.year
    @month = params[:month]&.to_i || Date.today.month

    @total_expenses = Book.total_expense_for_month(@year, @month)
    @total_incomes = Book.total_income_for_month(@year, @month)
    @balance = @total_incomes - @total_expenses

    # 前月のデータを取得
    previous_date = Date.new(@year, @month, 1) - 1.month
    @previous_year = previous_date.year
    @previous_month = previous_date.month

    @previous_total_expenses = Book.total_expense_for_month(@previous_year, @previous_month)
    @previous_total_incomes = Book.total_income_for_month(@previous_year, @previous_month)
    @previous_balance = @previous_total_incomes - @previous_total_expenses

    # 前月との比較
    @expense_difference = @total_expenses - @previous_total_expenses
    @income_difference = @total_incomes - @previous_total_incomes
    @balance_difference = @balance - @previous_balance

    # 月ごとの詳細リスト
    @expenses = Book.expenses_by_category_for_month(@year, @month)
    @incomes = Book.incomes_by_category_for_month(@year, @month)
  end
end
