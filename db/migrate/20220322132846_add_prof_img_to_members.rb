class AddProfImgToMembers < ActiveRecord::Migration[5.2]
  def change
    add_column :members, :prof_img, :string
  end
end
