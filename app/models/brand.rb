class Brand < ApplicationRecord
    #アソシエーション(1:多)
    has_many :products
end
