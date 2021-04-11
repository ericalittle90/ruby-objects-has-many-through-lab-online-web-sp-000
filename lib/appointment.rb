class Appointment

  attr_accessor :date, :doctor, :patient

  @@all = []

  def initialize(date)
    @date = date
    @@all << self
  end

  def self.all
    @@all
  end

end
