class SessionsController < ApplicationController
	 def new
  end
 

 def create
     doctor = Doctor.find_by_email(params[:session][:email].downcase)
    if doctor && doctor.authenticate(params[:session][:password])
      sign_in doctor
      redirect_to doctor
    else
      flash.now[:error] = 'Invalid email/password combination'
      render 'new'
    end
  end


  
  def destroy
    sign_out
    redirect_to root_url
  end
end

