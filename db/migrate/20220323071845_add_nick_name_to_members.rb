class AddNickNameToMembers < ActiveRecord::Migration[5.2]
  def change
    add_column :members, :nick_name, :string
  end
end
