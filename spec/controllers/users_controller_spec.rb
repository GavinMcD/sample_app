require 'spec_helper'

describe UsersController do
  render_views
  
  describe "Get show" do
    
    before(:each) do
      @user = Factory(:user)
    end
    
    # in order to get this to pass, we need pass this to route to an ID
    # for a user (according to our routes.rb file and how Rails handles routing)
    # => once done creating user modeling for PW, we want to put together Factories
    it "should be successful" do
      get :show, :id => @user # <= @user could be @user.id
      response.should be_success
    end
    
    it "should find the right user" do
      get :show, :id => @user
      assigns(:user).should == @user
    end
    
    it "should have the right title" do
      get :show, :id => @user
      response.should have_selector('title', :content => @user.name)
    end
    
    it "should have the user's name" do
      get :show, :id => @user
      response.should have_selector('h1', :content => @user.name)
    end
    
    it "should have a profile image" do
      get :show, :id => @user
      response.should have_selector('h1>img', :class => "gravatar")
    end
  end
  
  describe "GET 'new'" do
    
    it "should be successful" do
      get :new
      response.should be_success
    end
    
    it "shoud have the right title" do
      get :new
      response.should have_selector('title',
                                    :content => "Sign Up")
    end
  end
end
