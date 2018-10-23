class CreateContracts < ActiveRecord::Migration[5.2]
  def change
    create_table :contracts do |t|
      t.integer :subscriber_id
      t.date :contract_signature_date

      t.timestamps
    end
  end
end
