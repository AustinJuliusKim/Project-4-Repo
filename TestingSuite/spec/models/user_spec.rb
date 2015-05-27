require 'rails_helper'

RSpec.describe User, type: :model do 
	describe "User attribute validations" do
		it "is invalid without a first name"

		it "is invalid without a last name"

		it "returns a user's full name as a string"

		it "is invalid without a company name"

		it "is invalid without an email"

		it "is invalid if a user tries to signup with an email that already exists, regardless of capitalization"

		it "is invalid if email isn't formatted properly"
	end
end