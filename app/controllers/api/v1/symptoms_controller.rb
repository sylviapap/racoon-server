class Api::V1::SymptomsController < ApplicationController
  skip_before_action :authorized, only: [:index]

  def index
    symptoms = Symptom.includes(:reported_symptoms)
    render json: symptoms
  end

end
