class AddPaymentinfoToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :ip_address, :string
    add_column :users, :card_type, :string
    add_column :users, :card_expires_on, :date
    add_column :users, :card_number, :string
    add_column :users, :card_verification, :string
  end
end
