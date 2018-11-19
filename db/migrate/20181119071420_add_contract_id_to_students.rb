class AddContractIdToStudents < ActiveRecord::Migration[5.2]
  def change
    add_column :students, :contract_id, :integer
  end
end
