class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :personal_trainings
  has_one :profile

  def self.not_trainer
    all.select{ |u| u.profile.try(:is_trainer) == false || u.profile.try(:is_trainer) == nil }
  end
end
