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

	def showUsers
		@users = User.all;
	end

	def showUser
		id = params[:id]
		@user = User.find(id)
	end

	def updateUserAdmin
		id = params[:id]
		user = params[:user]
		_admin = user[:admin]
		_activated = user[:activated]
		
		Word.updateUserBoolean(id, _admin, _activated)
	end

	def newUser

	end

	def createUser
		user = params[:user]
		email = user[:email]
		activated = user[:activated]
		admin = user[:admin]
		password = user[:password]
		User.create!({:email => email, :admin => admin, :activated => activated, :password => password})
	end


	def edit
		id = params[:id]
		@word = Word.find(id)
	end

	def save
		#enter code here to save the word

		# @params = params[:words][:word]
		@arrParam = params[:words]
		@english = @arrParam[:word]
		@params = params
		puts @english.class


		# @word.save

	end
end
