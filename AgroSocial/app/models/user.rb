class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
<<<<<<< HEAD
         :rememberable, :trackable, :validatable
=======
         :recoverable, :rememberable, :trackable, :validatable
>>>>>>> bf41971f8e95cbb951bd5146adef1dd9a610ca80
end
