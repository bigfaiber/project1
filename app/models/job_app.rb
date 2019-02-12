class JobApp < ApplicationRecord
    belongs_to :job
    belongs_to :trabajador, class_name: "Trabajador", foreign_key: :user_id
end