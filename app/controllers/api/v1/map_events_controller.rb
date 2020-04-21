class Api::V1::MapEventsController < ApplicationController
    before_action :find_event, only: [:show, :update]

    def index
        map_events = MapEvent.all
        render json: map_events
    end 

    def show
        comments = map_event.comments
        render json: map_event, :include => [:users, :comments  => {:include => :user }]
    end 

    def create
        map_event = MapEvent.create(map_event_params)
        render json: map_event
    end 

    def update
        map_event.update(map_event_params)
        render json: map_event, :include => [:users => {:include => :map_events}]
    end 

    private
    
    def map_event_params
        params.require(:map_event)
        .permit(:latitude,
            :longitude,
            :title, 
            :address)
    end 

    def query_params
        params.permit(:title)
    end 

    def find_event
        map_event = MapEvent.find(params[:id])
    end
end
