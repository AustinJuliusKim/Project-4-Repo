require 'rails_helper'

RSpec.describe UsersController, :type => :controller do
	describe "GET #index" do
		before :each do
			get :index
		end

		it "should render the correct page" do
			expect(response).to render_template ("index") 
		end

		it "should have a status code of 200" do
			expect(response).to have_http_status (200)
		end
		it "should display an index of users" do
			@user1 = FactoryGirl.create(:user)
			@user2 = FactoryGirl.create(:user)
			expect(assigns(:users)).to include(@user1, @user2)
		end
	end

	describe "GET #show" do
		before :each do
			@user1 = FactoryGirl.create(:user) // comment back in to make show test pass
			get :show, id: @user1.id

		end

		it "should render the correct page" do 
			expect(response).to render_template("show")
		end

		it "should have a status code of 200" do 
			expect(response).to have_http_status (200)
		end

	end

	describe "GET #new" do
		before :each do
			@user1 = FactoryGirl.build_stubbed(:user)
			get :new 
		end

		it "should render the correct page" do
			expect(response).to render_template("new")
		end
		it "should have a status code of 200" do
			expect(response).to have_http_status (200)
		end
	end

	describe "POST #create" do
		
		it "should render the correct page" do 
			expect(response).to render_template("post")
		end

		it "should have a status code of 201" do 
			@user1 = FactoryGirl.create(:user)p
			expect(response).to have_http_status (201)
		end
		it "should persist the item to database" do
			expect{User.create}.to change(User, :count).by(1)
		end
	end

	describe "GET #edit" do
		before :each do
		@user1 = FactoryGirl.build_stubbed(:user)
			get :edit, id: @user1.id
		end
		it "should render the correct page" do
			expect(response).to render_template("edit")
		end
	end

	describe "DELETE #destroy" do
		before :each do
		@user1 = FactoryGirl.build_stubbed(:user)
		end
		it "deletes an item from the DB" do
			expect{User.destroy}.to change(User, :count).by(-1)
		end
		it "redirects to index page"
	end
end











