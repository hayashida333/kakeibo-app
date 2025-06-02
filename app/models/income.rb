class Income < ApplicationRecord
    def self.total_for_month(year, month)
      start_date = Date.new(year, month, 1)
      end_date = start_date.end_of_month
  
      where(received_on: start_date..end_date).sum(:amount)
    end
  end