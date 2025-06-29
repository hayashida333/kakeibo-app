class DashboardController < ApplicationController
  def index
    @year = params[:year]&.to_i || Date.today.year
    @month = params[:month]&.to_i || Date.today.month

    @total_expenses = Expense.total_for_month(@year, @month)
    @total_incomes = Income.total_for_month(@year, @month)

    @balance = @total_incomes - @total_expenses
  end
end
