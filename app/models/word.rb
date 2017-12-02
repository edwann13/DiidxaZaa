class Word < ApplicationRecord
	def showWord(word, lang)
		if lang == "spanish"
			return word.spanish;

		elsif lang == "zapoteco"
			return word.zapoteco;
		end
	end
end
