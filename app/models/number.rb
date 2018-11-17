class Number < ApplicationRecord
  # make sure the bounds do exist
  validates :lower_bound, :upper_bound, :created_by, presence: true
end
