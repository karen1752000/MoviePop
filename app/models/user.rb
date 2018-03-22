# // Authenticating w/o devise!
# // changed ApplicationRecord to ActiveRecord!
class User < ActiveRecord::Base
#   # Include default devise modules. Others available are:
#   # :confirmable, :lockable, :timeoutable and :omniauthable
#   devise :database_authenticatable, :registerable,
#          :recoverable, :rememberable, :trackable, :validatable
# end
# //clear
has_many :tasks, dependent: :destroy
# // clear
attr_accessible :username, :email, :password, :password_confirmation
# //clear
# // we must make these validations conditional b.c we don't want to fill our database with fake data, and can be applied to real apps like facebook
# we use allow_blank b.c we already have the presence validation
validates_presence_of :username, :email, :password_digest, unless: :guest?
validates_uniqueness_of :username, allow_blank: true
validates_confirmation_of :password
# // rails provides this authentication out of the box with little code needed
# // you can set validation to false so that skips validation & we can set them manually
#   has_secure_password
# //clear
  # first goal is to create a new class method, creates new user record, set the attribute to true
# // doing this inside a block b.c the guest attribute is protected from mass assignment
# we need this new guest method to always return a user record, multiple ways we can do this, fill this user with fake data
# //clear
# // mimicking logging in with a password w/o the validation so can add validations manually via password_digest to making sure it's present if we are not a guest & also adding password confirmation, both are above
require 'bcrypt'
attr_reader :password
include ActiveModel::SecurePassword::InstanceMethodsOnActivation

# //clear
def self.new_guest
  new { |u| u.guest = true }
  end

  def name
    guest ? "Guest" : username
end

  def move_to(user)
    tasks.update_all(user_id: user.id)
  end
end
