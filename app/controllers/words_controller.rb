class WordsController < ApplicationController

	# will bring up the user obj and it will allow for 
	# account changes
	def activate
		puts "**********"
		# puts params[:user]['activated']
		puts "**********"

		if request.post?
			# get user
			# I have to remove this code to the model I am breaking MVC here
			_activated = params[:user]['activated'];
			user = User.find(params[:id]);

			user.update(activated: _activated)
			redirect_to action: 'index'
		# else
		# 	primaryKey = params[:id]
		# 	@user = User.find(primaryKey)

		end
		# primaryKey = params[:id]
		# @user = User.find(primaryKey)

	end

	def update
		id = params[:id]
		@word = Word.find(id)

		if request.post?
			wordsArr = params[:word]
			spanish = wordsArr['spanish']
			zapoteco = wordsArr['zapoteco']
			english = wordsArr['word']

			@word.update(word: english)
			@word.update(spanish: spanish)
			@word.update(zapoteco: zapoteco)

			
		end
		

	end

	def activateUsers
		@users = User.all;
	end

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
		# @data = Word.find(params[:id])
		# @word = Word.new
		if !user_signed_in?
			redirect_to action: 'index'
			
		end

		if request.post?
			redirect_to action: 'create'
		end


	end
end
