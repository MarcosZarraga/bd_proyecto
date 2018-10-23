class CreateRules < ActiveRecord::Migration[5.2]
  def change
    create_table :rules do |t|
      t.string :max_students
      t.integer :school_id

      t.timestamps
    end
  end
end
