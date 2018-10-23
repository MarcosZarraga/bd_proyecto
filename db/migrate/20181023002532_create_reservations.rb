class CreateReservations < ActiveRecord::Migration[5.2]
  def change
    create_table :reservations do |t|
      t.integer :class_id
      t.integer :activity_id
      t.integer :student_id
      t.decimal :grade
      t.boolean :status

      t.timestamps
    end
  end
end
