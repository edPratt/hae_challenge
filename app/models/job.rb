class Job < ApplicationRecord
  validates :title, presence: true,
                    length: { minimum: 5 }
  validates :hour_rate, presence: true
  validates :tax_rate, presence: true
end
