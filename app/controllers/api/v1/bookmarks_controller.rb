class Api::V1::BookmarksController < ApplicationController
	def index
		bookmarks = Bookmark.where(params[:user_id])
		render json: bookmarks, :include => [:map_marker]
	end 

	def show
		bookmark = Bookmark.find(params[:id])
		render json: bookmark, :include => [:map_marker]
	end 

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