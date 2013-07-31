class Association < ActiveRecord::Base


	attr_accessible :email, :encrypted_password, :password, :is_association
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

   #references#
   has_many :events
end
