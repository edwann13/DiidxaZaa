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
end
