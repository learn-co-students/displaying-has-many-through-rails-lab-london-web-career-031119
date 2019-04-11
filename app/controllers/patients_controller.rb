class PatientsController < ApplicationController

  def index
    @patients = Patient.all
  end

  def show
    # byebug
    @patient = Patient.find(params[:id])
  end


end
