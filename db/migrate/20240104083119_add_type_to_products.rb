class AddTypeToProducts < ActiveRecord::Migration[7.1]
  def change
    add_reference :products, :type, null: false, foreign_key: true
  end
end
