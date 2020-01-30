class Patient

  attr_accessor :name, :appointment, :doctor
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def appointments
    Appointment.all.select {|appointment| appointment.patient == self}
  end

  def doctors
    appointments.collect {|appointment| appointment.doctor}
  end

  def new_appointment(doctor, date)
    Appointment.new(self, date, doctor)
  end

end 


martin = Patient.new("Keith Sweat")
martin.new_appointment(appointment)
      
doctor_who.add_appointment(appointment)
doctor_who.patients.include?(Keith)

appointment = Appointment.new("Friday, January 32nd", doctor_who)
doctor_who.add_appointment(appointment)

doctor_smith = Doctor.new("John Wall")
Doctor.new("Martha Stewart")
doctor_smith.appointments

