class Api::V1::BookmarksController < ApplicationController
    def index
        bookmarks = Bookmark.where(params[:user_id])
        render json: bookmarks
    end 

    def show
        bookmark = Bookmark.find(params[:id])
    end 

    def create
        bookmark = Bookmark.create(bookmark_params)
        render json: bookmark
    end 

    private

    def bookmark_params
        params.permit(:user_id, :map_marker_id)
    end 
end
