class Order < ApplicationRecord
    belongs_to :user, optional: true
    #accepts_nested_attributes_for :product

end
