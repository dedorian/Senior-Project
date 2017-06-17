class User < ApplicationRecord
    # Include default devise modules. Others available are:
    # :confirmable, :lockable, :timeoutable and :omniauthable
    devise :database_authenticatable, :registerable, :recoverable, :rememberable, :trackable, :validatable

    validates :first_name, presence: true

    attr_accessor :card_number, :card_verification, :card_type, :card_expires_on

end
