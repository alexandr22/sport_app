class Exercise < ActiveRecord::Base
  belongs_to :personal_training

  scope :ordered, proc{ order(:id) }
end
