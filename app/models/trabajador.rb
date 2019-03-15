class Trabajador < User
    default_scope { where(role: "Trabajador") }
    has_many :job_apps, foreign_key: "user_id"
    has_many :jobs, through: :job_apps

end

