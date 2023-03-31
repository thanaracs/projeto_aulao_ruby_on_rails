class CreateBills < ActiveRecord::Migration[7.0]
  def change
    create_table :bills do |t|
      t.string :name
      t.decimal :value

      t.timestamps
    end
  end
end
