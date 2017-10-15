class WordsController < ApplicationController
	def new
		@list = Word.all;
	end
end
