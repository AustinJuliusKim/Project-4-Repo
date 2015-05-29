require 'rails_helper'

RSpec.describe User, type: :model do 

	describe "User attribute validations" do
		before do 
			@user1 = FactoryGirl.build_stubbed(:user)
		end
		it "is invalid without a first name" do
			user = FactoryGirl.build_stubbed(:user, firstname: nil)
			expect(user).to be_invalid
		end

		it "is invalid without a last name" do 
			user = FactoryGirl.build_stubbed(:user, lastname: nil)
			expect(user).to be_invalid
		end

		it "returns a user's full name as a string" do 
			user = FactoryGirl.build_stubbed(:user, firstname: "mike", lastname: "pacheco")
			expect(user.full_name).to eq "mike pacheco"
		end

		it "is invalid without a company name" do
			user = FactoryGirl.build_stubbed(:user, companyname: nil)
			expect(user).to be_invalid
		end

		it "is invalid without an email" do 
			user = FactoryGirl.build_stubbed(:user, email: nil)
			expect(user).to be_invalid
		end

		it "is invalid if a user tries to signup with an email that already exists, regardless of capitalization" do
			user1 = FactoryGirl.create(:user, firstname: "Roger", lastname: "Smith", email: "roger@example.com")
			user2 = FactoryGirl.build_stubbed(:user, firstname: "Roger", lastname: "Smith", email: "roger@example.com")
			user3 = FactoryGirl.build_stubbed(:user, firstname: "Roger", lastname: "Smith", email: "ROGER@example.com")
			expect(user1).to be_valid
			expect(user2).to be_invalid
			expect(user3).to be_invalid
		end


		it "is invalid if email isn't formatted properly" do
			user = FactoryGirl.build_stubbed(:user, email: "asdfg")
			expect(user).to be_invalid
		end

	end
end










