class AddStudentContractIdToStudents < ActiveRecord::Migration[5.2]
  def change
  	remove_column :students, :student_contract_id
    add_column :students, :student_contract_id, :integer
  end
end
