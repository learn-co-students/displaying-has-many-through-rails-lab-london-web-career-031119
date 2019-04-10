class PatientsController < ApplicationController
  def index
    @patients = Patient.all
  end

  def show
    @patient = Patient.find(params[:id])
  end

  def new
    @patient = Patient.new
  end

  def create
    @patient = Patient.create(post_params)
    redirect_to @patient
  end

  def edit
    @patient = Patient.find(params[:id])
  end

  def update
    @patient = Patient.find(params[:id])
    @patient.update(post_params)
  end

  private

  def post_params
    params.require(:patient).permit(:name, :age)
  end

end
