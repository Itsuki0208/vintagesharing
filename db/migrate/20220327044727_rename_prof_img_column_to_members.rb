class RenameProfImgColumnToMembers < ActiveRecord::Migration[5.2]
  def change
    rename_column :members, :prof_img, :prof_img_id
  end
end
