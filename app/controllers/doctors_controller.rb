class DoctorsController < ApplicationController

    before_filter :signed_in_doctor, only: [:index, :edit, :update]
  before_filter :correct_doctor,   only: [:edit, :update,  :destroy]

def show
    @doctor = Doctor.find(params[:id])
end
  def new
  	@doctor=Doctor.new
  end
  def create
    @doctor = Doctor.new(params[:doctor])
    if @doctor.save
    	 sign_in @doctor
             flash[:success] = "Welcome to the EHR App"
        redirect_to @doctor
    else
      render 'new'
    end
  end
  def edit
    @doctor = Doctor.find(params[:id])
  end
 def update
    @doctor = Doctor.find(params[:id])
    if @doctor.update_attributes(params[:doctor])
flash[:success] = "Profile updated"
      sign_in @doctor
      redirect_to @doctor
          else
      render 'edit'
    end
  end

 def index
    @doctors = Doctor.all
  end
   def destroy
    Doctor.find(params[:id]).destroy
    flash[:success] = "Doctor destroyed."
    redirect_to doctors_url
  end

 private

    def signed_in_doctor
       unless signed_in?
        store_location
      redirect_to signin_url, notice: "Please sign in." 
    end
 def correct_doctor
      @doctor = Doctor.find(params[:id])
      redirect_to(root_path) unless current_doctor?(@doctor)
    end


end
end
