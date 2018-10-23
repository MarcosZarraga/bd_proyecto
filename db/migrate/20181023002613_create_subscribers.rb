class CreateSubscribers < ActiveRecord::Migration[5.2]
  def change
    create_table :subscribers do |t|
      t.string :name
      t.string :last_name

      t.timestamps
    end
  end
end
