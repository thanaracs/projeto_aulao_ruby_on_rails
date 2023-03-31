class AddBillToCategory < ActiveRecord::Migration[7.0]
  def change
    add_reference :categories, :category, null: false, foreign_key: true
  end
end
