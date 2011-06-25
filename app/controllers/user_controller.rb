class UserController < ApplicationController
  
  def signup
    @title = "Vacay Tracker | Employee Vacation Tracking"
    @user = User.new
    @plan = Plan.all
  end
  
  def create
    @title = "Vacay Tracker | Employee Vacation Tracking"
       @user = User.new(params[:user])
       if @user.save
         flash[:success] = "Thanks for signing up. We polishing the wheels before the launch. We'll let you know when we are ready :)"
         redirect_to :root
       else
         @title = "Vacay Tracker | Employee Vacation Tracking"
         flash[:error] = "Please enter a valid email address"
         redirect_to :root

       end
  end
  
  
  def show
    @title = ' Success'
  end 
    
    
  
end
