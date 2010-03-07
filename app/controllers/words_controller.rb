class WordsController < ApplicationController
  def show
    w1 = params[:word_1]
    w2 = params[:word_2]
    w3 = params[:word_3]
    
    likes = params[:likes]
    
    words = Word.find( :all, :conditions => {:letters => [w1, w2, w3]}, :include => [:user_words] )
    users = User.find( words.map{|w| w.user_words.map{ |uw| uw.user_id} }.flatten )#could be written with inject
    logger.error users.inspect
    render :json => users
  end
end
