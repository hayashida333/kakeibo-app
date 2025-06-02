class ExpensesController < ApplicationController
    before_action :set_expense, only: %i[show edit update destroy]
    def index
      @expenses = Expense.order(spent_on: :desc)
    end
  
    def new
      @expense = Expense.new
    end
  
    def create
      @expense = Expense.new(expense_params)
      if @expense.save
        redirect_to expenses_path, notice: '支出を登録しました'
      else
        render :new
      end
    end
  
    def edit
    end
    
    def show
      @expense = Expense.find(params[:id])
    end
  
    def update
      if @expense.update(expense_params)
        redirect_to expenses_path, notice: '支出を更新しました'
      else
        render :edit
      end
    end
  
    def destroy
      @expense.destroy
      redirect_to expenses_path, notice: '支出を削除しました'
    end
  
    private
  
    def set_expense
      @expense = Expense.find(params[:id])
    end
  
    def expense_params
      params.require(:expense).permit(:amount, :category, :memo, :spent_on)
    end
  end