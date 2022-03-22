class AddNickNameToMembers < ActiveRecord::Migration[5.2]
  def change
    add_column :members, :members, :string
  end
end
