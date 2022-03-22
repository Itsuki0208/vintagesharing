class AddIsActiveToMembers < ActiveRecord::Migration[5.2]
  def change
    add_column :members, :is_active, :boolean, default: true, null: false
  end
end
