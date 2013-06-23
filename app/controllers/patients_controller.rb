class PatientsController < ApplicationController

def show
    @patient = Patient.find(params[:id])
 end
  def new
    @patient = Patient.new
  end
  	def index
    @patient = Patient.all
  end

  def create
    @patient = Patient.new(params[:patient])
    if @patient.save
    	
    flash = { success: "The patient registered, now you can enter the clinical information of patient", error: "There is a problem,patient did not register" }

      redirect_to(clinical_path) 

    else
      render 'new'
    end
  end
end
