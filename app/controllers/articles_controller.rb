class ArticlesController < ApplicationController
	include ArticlesHelper

	def index
		@articles = Article.all
	end

	def show
		@article = Article.find(params[:format])	
	end

	def new
		@article = Article.new
	end

	def create
		@article = Article.new(article_params)

		@article.save

		flash.notice = "Article '#{@article.title}' Created!"

		redirect_to @article
	end

	def destroy
		@article = Article.find(params[:format])
		@article.destroy

		flash.notice = "Article '#{@article.title}' Destroyed!"

		redirect_to @article
	end

	def edit
		@article = Article.find(params[:format])
	end

	def update
		@article = Article.find(params[:format])
		@article.update(article_params)

		flash.notice = "Article '#{@article.title}' Updated!"

		redirect_to @article
	end
end
