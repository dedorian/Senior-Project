class User < ApplicationRecord
    # Include default devise modules. Others available are:
    # :confirmable, :lockable, :timeoutable and :omniauthable
    devise :database_authenticatable, :registerable, :recoverable, :rememberable, :trackable, :validatable

    validates :email, presence: true, uniqueness: true
    validates :password, presence: true
    validates :password_confirmation, presence: true

    validates :first_name, presence: true
    validates :last_name, presence: true
    validates :street, presence: true
    validates :city, presence: true
    validates :state, presence: true
    validates :zip, presence: true

    validates :card_number, presence: true, numericality: true, length: { is: 16 }
    validates :card_verification, presence: true, numericality: true

    attr_accessor :card_number, :card_verification, :card_type, :card_expires_on

end
