class Campaign < ApplicationRecord
	enum type: [:email, :sms]
	belongs_to :user
	has_many :drips, dependent: :destroy
end
