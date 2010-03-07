class Word < ActiveRecord::Base
  has_many :user_words, :dependent => :destroy
  has_many :users, :through => :user_words
  
  def self.find_or_create(letters)
    word =  Word.find_by_letters(letters)
    if word.nil?
      word = Word.create(:letters => letters)
    end
    word
  end
end
