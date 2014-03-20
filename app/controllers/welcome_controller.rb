class WelcomeController < ApplicationController
    
    def index
	    if not user_signed_in?
	      redirect_to :controller => 'home', :action => 'index'
	    end

	    @tasks = Task.all
  	end

end
