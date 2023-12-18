class CreateStudents < ActiveRecord::Migration[7.1]
  def change
    create_table :students do |t|
      t.string :name
      t.string :roll_no
      t.string :class_name

      t.timestamps
    end
  end
end
