class Api::V1::MapMarkersController < ApplicationController
    skip_before_action :authorized, only: [:index, :show]

    def index
        map_markers = MapMarker.all
        render json: map_markers, :include => [:users, :comments  => {:include => :user }]
    end 

    def show
        map_marker = MapMarker.find(params[:id])
        render json: map_marker, :include => [:users, :comments  => {:include => :user }]
    end 

    def create
        map_marker = MapMarker.create(map_marker_params)
        render json: map_marker
    end 

    def update
        map_marker = MapMarker.find(params[:id])
        map_marker.update(map_marker_params)
        render json: map_marker, :include => [:users => {:include => :map_markers}]
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
            :user_id)
    end 

    def query_params
        params.permit(:title)
    end 


end
