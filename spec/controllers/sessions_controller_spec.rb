require 'spec_helper'

describe SessionsController do
  # Any time you have the "have_selector" tag you need to:
  render_views

  describe "GET 'new'" do
    it "should be successful" do
      get :new
      response.should be_success
    end
    
    it "should have the right title" do
      get :new
      response.should have_selector('title', :content => "Sign In" )
    end
  end

end
