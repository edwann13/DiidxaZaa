class Word < ApplicationRecord
	def showWord(word, lang)
		if lang == "spanish"
			return word.spanish;

		elsif lang == "zapoteco"
			return word.zapoteco;
		end
	end

	def self.updateUserBoolean(id, _admin, _activated)
		user = User.find(id)
		user.admin = _admin
		user.activated = _activated
		user.save
		return true
	end
end
