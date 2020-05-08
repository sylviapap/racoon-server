class Api::V1::MapMarkersController < ApplicationController
	skip_before_action :authorized, only: [:index]

	def index
		map_markers = MapMarker.includes(:creator)
		render json: map_markers, :include => [:comments  => {:include => :user }, :creator => {:include => :symptoms } ]

		# render json: map_markers.as_json(include: [creator: { include: [:symptoms], only: [:symptoms]}, comments: {include: [user: { only: [:first_name]}]} ])
	end 

	def create
		map_marker = MapMarker.create(map_marker_params)
		render json: map_marker
	end 

	def destroy
		map_marker = MapMarker.find(params[:id])
		map_marker.destroy
	end

	private
	
	def map_marker_params
		params.permit(
			:latitude,
			:longitude,
			:title, 
			:address, 
			:user_id,
			:message)
	end
end
