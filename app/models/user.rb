class User < ApplicationRecord
    require 'active_merchant'
    # Include default devise modules. Others available are:
    # :confirmable, :lockable, :timeoutable and :omniauthable
    devise :database_authenticatable, :registerable, :recoverable, :rememberable, :trackable, :validatable

    validate :validate_card, :on => :create
    attr_accessor :card_number, :card_verification

private

    def validate_card
        unless credit_card.valid?
            credit_card.errors.full_messages.each do |message|
                errors.add_to_base message
            end
        end
    end

    def credit_card
        @credit_card ||= ActiveMerchant::Billing::CreditCard.new(
            :type => card_type,
            :number => card_number,
            :verification_value => card_verification,
            :month => card_expires_on.month,
            :year => card_expires_on.year,
            :first_name => first_name,
            :last_name => last_name
        )
    end
end
