require 'rails_helper'

RSpec.describe OrdersController, :type => :controller do
	describe "GET #index" do
		before :each do
			get :index 
		end
		it "should render the correct page"
		it "should have a status code of 200"
	end

	describe "GET #show" do
		before :each do
			get :show, 
	end
end