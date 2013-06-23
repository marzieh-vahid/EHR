class PatientIdentsController < ApplicationController


  def show
  	    @patientident = PatientIdent.find(params[:id])
  end
  def new
    @patientident = PatientIdent.new
  end
  	def index
    @patientident = PatientIdent.all
  end

  def create
    @patientident = PatientIdent.new(params[:patientident])
    if @patientident.save
    	
    flash = { success: "The patient registered, now you can enter the clinical information of patient", error: "There is a problem,patient did not register" }

      redirect_to(clinical_path) 

    else
      render 'new'
    end
  end
end
