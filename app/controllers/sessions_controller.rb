class SessionsController < ApplicationController
  def new
   @title = "Log in"
  end

  def create
    patient = Patient.find_by_email(params[:email])
  	if patient && patient.authenticate(params[:password])
   	 	session[:patient_id] = patient.id
    	redirect_to root_url, :notice => "Logged in!"
  	else
    	flash.now.alert = "Invalid email or password"
   	    render "new"
 	end
  end

  def destroy
    session[:patient_id] = nil
    redirect_to root_url, :notice => "Logged out!"
  end
end
