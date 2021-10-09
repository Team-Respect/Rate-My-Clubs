class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
          :recoverable, :rememberable, :validatable, authentication_keys: [:username]
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  # devise :database_authenticatable, :registerable,
  #       :recoverable, :rememberable, :validatable
  
  #has_many :ratings
  
  # Add validations here
  # Ex: uniqueness for email/username?
  # length of passsword?

  # Validate username is greater than 5 characters and not duplicate and not empty.
  validates :username, length: { minimum: 5 }, uniqueness: true, presence: true

end