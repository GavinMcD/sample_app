class UsersController < ApplicationController
  
  def show
    @user = User.find(params[:id])
    @title = @user.name 
  end
  
  def new
    @user = User.new
    @title = "Sign Up"
  end
  
  def create
    @user = User.new(params[:user])
    if @user.save
      flash[:success] = "Welcome to the sample app!"
      redirect_to user_path(@user)   # or: redirect_to @user if you want to shorten
      # redirect_to @user, flash => { :success => "Welcome to the sample app!" }
    else      
      @title = "Sign up"
      render 'new'
    end
  end

end
