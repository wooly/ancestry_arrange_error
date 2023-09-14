class AddTypeToNodes < ActiveRecord::Migration[7.0]
  def change
    add_column :nodes, :type, :string
  end
end
