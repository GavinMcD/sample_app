class PagesController < ApplicationController
  # RoR tut: likes to see which actions are defined within the controller
  
  def home
    @title = "Home"
  end

  def contact
    @title = "Contact"
  end
  
  def about
    @title = "About"
  end

end
