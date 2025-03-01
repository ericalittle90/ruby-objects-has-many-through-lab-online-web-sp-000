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
    Appointment.new(date, self, doctor)
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
