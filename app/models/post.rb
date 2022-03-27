class Post < ApplicationRecord
  belongs_to :member
  has_many :posts_genre_relations
  has_many :genres, through: :posts_genre_relations
  has_many :post_images
  accepts_attachments_for :post_images, attachment: :image 
end
