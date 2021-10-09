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
  
  # Validate username is greater than 5 characters.
  validates :username, length: { minimum: 5 }
  
  # Validate that the username are not duplicate.
  validates :username, uniqueness: true

  # Validate that the username are not empty.
  validates :username, presence: true

end