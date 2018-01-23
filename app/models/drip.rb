class Drip < ApplicationRecord
	enum type: [:email_template, :sms_template]
end
