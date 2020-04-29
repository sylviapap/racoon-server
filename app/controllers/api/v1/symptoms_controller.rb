class Api::V1::SymptomsController < ApplicationController
  skip_before_action :authorized, only: [:index, :show]

  def index
    symptoms = Symptom.all
    render json: symptoms
  end

  def show
    symptom = Symptom.find(params[:id])
    render json: symptom
  end
end
