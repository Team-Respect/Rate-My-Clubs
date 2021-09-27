class User < ApplicationRecord
  has_many :ratings
  has_many :clubs # Just to prevent trolling, might not implement

  # Add validations here
  # Ex: uniqueness for email/username?
  # length of passsword?
end
