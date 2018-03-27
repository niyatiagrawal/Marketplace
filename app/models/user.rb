class User < ApplicationRecord
  has_one :seller_profile 
  rolify
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

 # <Niyati - the below is telling to assign the role to the user when comimg via sell stuff or buyer. it checks if a user type exists then assign it to the add role for the user

 after_commit :assign_role

 def assign_role
     self.add_role self.user_type.to_sym if self.user_type
  end
end
