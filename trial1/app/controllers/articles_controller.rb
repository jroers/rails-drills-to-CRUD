class ArticlesController < ApplicationController
	def index
		@user = User.find_by_id(params[:user_id])
	end

	def new
		@article = Article.new
	end

	def create
		@article = Article.create(article_params)
		redirect_to "/users/#{session[:user_id]}/articles"
	end

	def show
		find_article
		@user = User.find_by_id(params[:user_id])
	end

	def edit
		find_article
	end

	def update
		find_article		
		@article.update_attributes(article_params)
		redirect_to "/users/#{params[:user_id]}/articles/#{params[:id]}"
	end

	def delete
		find_article
	end

	private

	def article_params
		params.require(:article).permit(:title, :content, :user_id)
	end

	def find_article
		@article = Article.find_by_id(params[:id])
	end
end
