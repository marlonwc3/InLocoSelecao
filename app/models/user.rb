class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  

  devise :database_authenticatable, :registerable,
         :trackable, :validatable, :confirmable

  validates_format_of  :password, with: /\A([a-zA-Z]|\d)*\z/

end
