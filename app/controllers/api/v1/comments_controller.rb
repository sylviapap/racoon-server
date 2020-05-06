class Api::V1::CommentsController < ApplicationController    
    def index
        comments = Comment.where(params[:map_marker_id]) 
        render json: comments
    end 

    def show
        comment = Comment.find(params[:id])
        render json: comment
    end 

    def create
        comment = Comment.create(comment_params)
        render json: comment
    end 

    private

    def comment_params
        params.permit(:content, :user_id, :map_marker_id)
    end 
end
