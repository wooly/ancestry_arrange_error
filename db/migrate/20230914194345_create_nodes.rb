class CreateNodes < ActiveRecord::Migration[7.0]
  def change
    create_table :nodes do |t|
      t.integer :group_id

      t.timestamps
    end
  end
end
