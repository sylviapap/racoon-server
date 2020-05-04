class Api::V1::DiagnosesController < ApplicationController
  
  def show
    diagnosis = Diagnosis.find(params[:id])
    render json: diagnosis, :include => [:user]
  end 

  def create
    diagnosis = Diagnosis.create(diagnosis_params)
    render json: diagnosis
  end 

  def update
    diagnosis = Diagnosis.find(params[:id])
    diagnosis.update(diagnosis_params)
    render json: diagnosis, :include => [:user]
  end

  def destroy
    diagnosis = Diagnosis.find(params[:id])
    diagnosis.destroy
  end

  private
  
  def diagnosis_params
    params.permit(
      :description,
      :label,
      :triage_level, 
      :user_id,
      :reported_symptoms)
  end
end
