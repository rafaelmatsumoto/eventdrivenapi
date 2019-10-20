class AddAnnualEarningsToLead < ActiveRecord::Migration[6.0]
  def change
    add_column :leads, :annual_earnings, :decimal
  end
end
