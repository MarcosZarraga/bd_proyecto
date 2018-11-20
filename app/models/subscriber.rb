class Subscriber < ApplicationRecord
	has_one :contract, dependent: :destroy
end
