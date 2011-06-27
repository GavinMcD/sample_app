class PagesController < ApplicationController
  # guide: likes to see that all actions are defined within the controller
  
  def home
    @title = "Home"
  end

  def contact
    @title = "Contact"
  end
  
  def about
    @title = "About"
  end
  
  def help
    @title = "Help"
  end

end
