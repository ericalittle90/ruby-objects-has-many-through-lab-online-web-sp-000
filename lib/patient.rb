class Patient

  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def new_appointment(date, doctor)
    Doctor.new(date, doctor, self)
  end

  def doctors
  appointments.map do |appointment|
    appointment.doctor
  end
end

def appointments
  Appointment.all.select do|appointment|
    appointment.patient == self
  end
end

end
