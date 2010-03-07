class UserWord < ActiveRecord::Base

  belongs_to :word
  belongs_to :user

  def self.create_with_word( letters, user_id ) 
    word = Word.find_or_create( letters ) 
    UserWord.create( :word_id => word.id, :user_id  => user_id ) 
  end
end
