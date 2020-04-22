class Api::V1::UserMarkersController < ApplicationController
    def index
        user_markers = UserMarker.where(params[:user_id])
        render json: user_markers
    end 

    def show
        user_marker = UserMarker.find(params[:id])
    end 

    def create
        user_marker = UserMarker.create(user_marker_params)
        map_marker = user_marker.map_marker
        user = user_marker.user
        map_markers = user.map_markers

        if user_marker.valid?
            render json: user_marker, :include => [:user => {:include => :map_markers}]
        else
            render json: { error: 'failed to add marker' }, status: :not_acceptable
        end
    end 

    private

    def user_marker_params
        params.require(:user_marker).permit(:user_id, :map_marker_id)
    end 
end
