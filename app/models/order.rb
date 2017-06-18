class Order < ApplicationRecord
    belongs_to :user
    #accepts_nested_attributes_for :product

end
