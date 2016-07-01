class User < ApplicationRecord


self.primary_key = :employee_id

#This method adds functionality to save passwords securely.
#In order to save passwords securely, has_secure_password uses an algorithm called bcrypt. 
#To use bcrypt, we added the bcrypt gem to the Gemfile.

has_secure_password

def editor? 
  self.role == 'editor' 
end

def admin? 
  self.role == 'admin' 
end


end
