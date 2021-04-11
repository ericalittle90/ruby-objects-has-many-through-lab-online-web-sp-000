class Appointment

  attr_accessor :name, :doctor, :patient

  @@all = []

  def initialize(date)
    @date = date
    @@all << self
  end

  def self.all
    @@all
  end

end 
