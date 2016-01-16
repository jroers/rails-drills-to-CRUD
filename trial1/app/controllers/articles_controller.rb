class ArticlesController < ApplicationController
	def index
		@user = User.find_by_id(params[:user_id])
	end
end
