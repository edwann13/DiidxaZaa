class Word < ApplicationRecord
	def showWord(word, lang)
		if lang == "spanish"
			return word.spanish;

		elsif lang == "zapoteco"
			return word.zapoteco;
		end
	end


	def self.returnQueryObj(id)
		if id.eql? "All"
			return Word.all;
		end
		
		words = Word.where("word like ?", "#{id.downcase}%").all

		return words
	end
end
