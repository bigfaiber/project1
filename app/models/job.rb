class Job < ApplicationRecord
    belongs_to :cliente, foreign_key: :user_id, class_name: "Cliente"
    has_many :job_apps
end  