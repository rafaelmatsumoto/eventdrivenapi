# frozen_string_literal: true

class CreateLeads < ActiveRecord::Migration[6.0]
  def change
    create_table :leads do |t|
      t.string :name
      t.string :email

      t.timestamps
    end
  end
end
