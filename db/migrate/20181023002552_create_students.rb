class CreateStudents < ActiveRecord::Migration[5.2]
  def change
    create_table :students do |t|
      t.integer :current_activity_id
      t.string :name
      t.string :last_name
      t.string :phone
      t.string :email

      t.timestamps
    end
  end
end
