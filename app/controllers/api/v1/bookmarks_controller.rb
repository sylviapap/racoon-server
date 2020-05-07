class Api::V1::BookmarksController < ApplicationController
	def create
		bookmark = Bookmark.find_or_create_by(bookmark_params)
		render json: bookmark
	end 

	def destroy
		bookmark = Bookmark.find(params[:id])
		bookmark.destroy
	end

	private

	def bookmark_params
		params.permit(:user_id, :map_marker_id)
	end 
end