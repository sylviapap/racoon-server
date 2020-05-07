class Api::V1::ReportedSymptomsController < ApplicationController

  def create
    reported_symptom = ReportedSymptom.find_or_create_by(reported_symptom_params)
    render json: reported_symptom
  end 

  def destroy
    reported_symptom = ReportedSymptom.find(params[:id])
    reported_symptom.destroy
  end

  private

  def reported_symptom_params
    params.permit(:symptom_id, :user_id)
  end
end