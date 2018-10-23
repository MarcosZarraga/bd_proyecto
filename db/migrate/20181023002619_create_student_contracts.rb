class CreateStudentContracts < ActiveRecord::Migration[5.2]
  def change
    create_table :student_contracts do |t|
      t.integer :contract_id
      t.string :student_id
      t.datetime :start_date

      t.timestamps
    end
  end
end
