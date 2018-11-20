class Student < ApplicationRecord
	 has_one :student_contract, dependent: :destroy
end
