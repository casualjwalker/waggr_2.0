class AddValueToDoggies < ActiveRecord::Migration
  def change
    add_column :doggies, :parent_id, :integer
  end
end
