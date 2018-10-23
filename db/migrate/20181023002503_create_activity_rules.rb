class CreateActivityRules < ActiveRecord::Migration[5.2]
  def change
    create_table :activity_rules do |t|
      t.integer :capacity
      t.integer :activity_type_id
      t.integer :rule_id

      t.timestamps
    end
  end
end
