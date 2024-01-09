class AddColumnToProducts < ActiveRecord::Migration[7.1]
  def change
    add_column :products, :purchase_date, :date
    add_column :products, :warranty, :integer
  end
end
