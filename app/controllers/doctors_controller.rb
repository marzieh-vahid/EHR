class DoctorsController < ApplicationController
def show
    @doctor = Doctor.find(params[:id])
end
  def new
  	@doctor=Doctor.new
  end
  def create
    @doctor = Doctor.new(params[:doctor])
    if @doctor.save
    	 sign_in @user
      # Handle a successful save.
        redirect_to @doctor
    else
      render 'new'
    end
  end
end
