class Product < ApplicationRecord
    belongs_to :brand
    has_many :posts
end
