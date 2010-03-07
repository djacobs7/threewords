class UsersController < ApplicationController
  
  def create
    
      @user = User.find_by_snid( params[:snid] )
    
    if @user.nil?
      
      @user = User.new
      @user.snid = params[:snid]
      @user.gender = params[:gender]
      @user.likes = params[:likes]
      @user.save!
      
      
      UserWord.create_with_word( params[:word_1], @user.id ) 
      UserWord.create_with_word( params[:word_2], @user.id ) 
      UserWord.create_with_word( params[:word_3], @user.id ) 

    end
    
    render :json => {}
  end
  
  
  def show
    @user = User.find_by_snid( snid )
    
  end


  def destroy
    @user = User.find_by_snid( params[:snid] )
    @user.destroy
    render :text => 'destroyed'
  end
end
