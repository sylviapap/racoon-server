class Api::V1::SymptomsController < ApplicationController
  skip_before_action :authorized

  def index
    symptoms = Symptom.all
    render json: symptoms
  end
end
