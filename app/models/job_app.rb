class JobApp < ApplicationRecord
    belongs_to :job
    belongs_to :trabajador, class_name: "Trabajador", foreign_key: :user_id

    time_range = Time.now..(Time.now.midnight + 30.day)
    scope :current , -> { joins(:job).where("jobs.start_datetime > ?", DateTime.now) }
end