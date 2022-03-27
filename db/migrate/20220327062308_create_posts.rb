class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
      t.integer :member_id
      t.string :shop_name
      t.string :shop_name_kana
      t.string :telephone_number
      t.string :address
      t.string :cost

      t.timestamps
    end
  end
end
