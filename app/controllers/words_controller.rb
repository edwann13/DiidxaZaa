class WordsController < ApplicationController
	def All
		@words = Word.all;
	end

	def create
		# byebug

		# english = params[:english]
		# spanish = params[:spanish]
		# zapoteco = params[:zapoteco]

		english = params[:word][:word]
		spanish = params[:word][:spanish]
		zapoteco = params[:word][:zapoteco]
		category = "cats"

		Word.create(word: english, spanish: spanish, zapoteco: zapoteco, category: category)


	end

	# def dest
	# 	redirect_to 'devise/sessions#destroy'

	# end
	def index
	end


	def show
		@lang = session[:lang] || params[:lang] || "spanish"

		id = params['id'];

		puts "***********"
		puts id
		puts "***********"


		@list = Word.returnQueryObj(id)
		# puts @list.to_json
	end

	def new
	end

	def carousel
		@list = params[:data]
	end

	def addWord
		@data = Word.find(params[:id])
		@word = Word.new
		if !user_signed_in?
			redirect_to action: 'index'
			
		end

		if request.post?
			redirect_to action: 'create'
		end


	end
end
