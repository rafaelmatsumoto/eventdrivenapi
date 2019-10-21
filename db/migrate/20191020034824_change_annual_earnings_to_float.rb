class ChangeAnnualEarningsToFloat < ActiveRecord::Migration[6.0]
  def change
    change_column :leads, :annual_earnings, :money
  end
end
