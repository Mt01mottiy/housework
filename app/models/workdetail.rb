class Workdetail < ApplicationRecord
  validates :task, presence: true
  validates :limit_date, presence: true
end
