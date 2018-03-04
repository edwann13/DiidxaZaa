class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

    def active_for_authentication?
    	super && self.activated
    end

    def inactive_message
    	self.activated ? super : "The current account has not been activated yet. Please contract the administrator."

    end

end
