class Order < ApplicationRecord
    #accepts_nested_attributes_for :product

    validate_on_create :validate_card

    private

    unless credit_card.valid?
        credit_card.errors.full_messages.each do |message|
            errors.add_to_base message
        end
    end

    def credit_card
        @credit_card ||= ActiveMerchant::Billing::CreditCard.new(
        type: card_type,
        number: card_number,
        verification_value: card_verification,
        month: card_expires_on.month,
        year: card_expires_on.year,
        first_name: first_name,
        last_name: last_name
        )
    end

end
