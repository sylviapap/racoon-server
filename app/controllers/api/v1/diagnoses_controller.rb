class Api::V1::DiagnosesController < ApplicationController 

  def create
    diagnosis = Diagnosis.create(diagnosis_params)
    render json: diagnosis
  end 

  private
  
  def diagnosis_params
    params.permit(
      :description,
      :label,
      :triage_level, 
      :user_id)
  end
end
