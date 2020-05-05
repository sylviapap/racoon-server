class Api::V1::ReportedSymptomsController < ApplicationController
  def index
    reported_symptoms = ReportedSymptom.where(params[:user_id])
    render json: reported_symptoms
  end 

  def show
    reported_symptom = ReportedSymptom.find(params[:id])
  end 

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