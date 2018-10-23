class CreateSchools < ActiveRecord::Migration[5.2]
  def change
    create_table :schools do |t|
      t.string :name
      t.string :schedule_start
      t.string :schedule_end

      t.timestamps
    end
  end
end
