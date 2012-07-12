class RegistrationsController < ApplicationController

	def index
	  
  end
  
  def create
    
    registration = Registration.create(params[:registration])
    
    if registration.save
      redirect_to "#{params[:success_redirect]}?email=success"
    else
      redirect_to params[:success_redirect]
    end
    
  end

end
