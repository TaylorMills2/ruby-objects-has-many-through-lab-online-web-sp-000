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

doctor_smith = Doctor.new("John Smith")
Doctor.new("Martha Jones")
doctor_smith.appointments # should be empty array

doctor_who = Doctor.new("The Doctor")
doctor_who.name #=> Should be: "The Doctor"


appointment = Appointment.new("Friday, January 32nd", doctor_who)
doctor_who.add_appointment(appointment) #=> 

martin = Patient.new("Martin Jones")
martin.add_appointment(appointment)
      
doctor_who.add_appointment(appointment)
doctor_who.patients.include?(martin)
