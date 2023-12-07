class CreateEmployees < ActiveRecord::Migration[7.1]
  def change
    create_table :employees do |t|
      t.string :first_name
      t.string :middle_name
      t.string :last_name
      t.string :designation
      t.string :plase_of_posting
      t.string :address
      t.string :bank_id
      t.string :email
      t.string :contact_no

      t.timestamps
    end
  end
end
