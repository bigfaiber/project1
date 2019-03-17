class Trabajador < User
    default_scope { where(role: "Trabajador") }
    has_many :job_apps, foreign_key: "user_id"
    has_many :jobs, through: :job_apps

    def blank_stars
        5 - rating.to_i
    end
end

