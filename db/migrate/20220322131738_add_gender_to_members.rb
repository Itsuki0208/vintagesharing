class AddGenderToMembers < ActiveRecord::Migration[5.2]
  def change
    add_column :members, :gender, :integer
  end
end
