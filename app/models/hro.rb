class Hro < User
    default_scope { where(role: 'HRO') }
    has_many :clientes, foreign_key: "HRO_id", class_name: 'Cliente'
    has_many :job_apps, through: :clientes

end