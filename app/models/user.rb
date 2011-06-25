class User < ActiveRecord::Base
 attr_accessible :size, :email

 email_regex = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  
  validates :email, :format     => { :with => email_regex },
                    :presence => true,
                    :uniqueness => { :case_sensitive => false }
 


end
