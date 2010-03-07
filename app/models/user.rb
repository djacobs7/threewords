class User < ActiveRecord::Base
  MALE = 0 
  FEMALE = 1
  BOTH = 2
  
  has_many :user_words, :dependent => :destroy
  has_many :words, :through => :user_words
  validates_uniqueness_of :snid
  
end
