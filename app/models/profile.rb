class Profile < ActiveRecord::Base
  belongs_to :user
  validates :name, :stage, :age, :weight, :height, presence: true
  validates :name, length: { minimum: 2 }
end
