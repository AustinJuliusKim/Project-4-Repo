require 'rails_helper'

RSpec.describe UsersController, :type => :controller do
	describe "GET #index" do
		it "should render the correct page"
		it "should have a status code of 200"
		it "should display an index of items"
	end

	describe "GET #show" do
		it "should render the correct page"
		it "should have a status code of 200"
	end

	describe "GET #new" do
		it "should render the correct page"
		it "should have a status code of 200"
	end

	describe "POST #create" do
		it "should render the correct page"
		it "should have a status code of 201"
		it "should persist the item to database"
	end

	describe "GET #edit" do
		it "should render the correct page"
	end

	describe "DELETE #destroy" do
		it "deletes an item from the DB"
		it "redirects to index page"
	end
end