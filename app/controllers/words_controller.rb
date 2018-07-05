class WordsController < ApplicationController
	def show
		@lang = session[:lang] || params[:lang] || "spanish"

		@list = Word.all;
	end

	def new
	end

	def carousel
		@list = params[:data]
	end


	def allWords 
		@lang = session[:lang] || params[:lang] || "spanish"

		@list = Word.all;
		

	end
end
