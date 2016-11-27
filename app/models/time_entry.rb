class TimeEntry < ApplicationRecord
  validates :time_spent, presence: true
  validates :date, presence: true
  validates :summary, presence: true, length: { minimum: 25 }
  validates :job_id, presence: true

  def get_job
    Job.find(job_id)
  end
end
