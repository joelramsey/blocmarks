class User < ActiveRecord::Base
  
 def admin?
   role == 'admin'
 end
 
 def moderator?
   role == 'moderator'
 end
  
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :confirmable
end
