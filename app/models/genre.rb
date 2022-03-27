class Genre < ApplicationRecord
  has_many :posts_genre_relations
  has_many :posts, through: :posts_genre_relations 
end
