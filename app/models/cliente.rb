class Cliente < User
    default_scope { where(role: "Cliente") }
    has_many :jobs, foreign_key: "user_id"
    has_many :job_apps, through: :jobs
    belongs_to :HRO, class_name: "Hro"#, foreign_key: "client_id"
end