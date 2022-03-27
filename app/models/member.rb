class Member < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  attachment :prof_img
  has_many:posts, dependent: :destroy
  # attachmentには、カラム名（profile_img_id）から_idを除いた名前（profile_img）を記述する。       
  
end
