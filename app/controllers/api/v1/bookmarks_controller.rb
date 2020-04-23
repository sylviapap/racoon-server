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
        map_marker = bookmark.map_marker
        user = bookmark.user
        map_markers = user.map_markers

        if bookmark.valid?
            render json: bookmark, :include => [:user => {:include => :map_markers}]
        else
            render json: { error: 'failed to add marker' }, status: :not_acceptable
        end
    end 

    private

    def bookmark_params
        params.require(:bookmark).permit(:user_id, :map_marker_id)
    end 
end
