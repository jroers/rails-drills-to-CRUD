class ArticlesController < ApplicationController
	def index
		@user = User.find_by_id(params[:user_id])
	end

	def new
		@article = Article.new
	end

	def create
		article_params = params.require(:article).permit(:title, :content, :user_id)
		@article = Article.create(article_params)
		redirect_to "/users/#{session[:user_id]}/articles"
	end
end
