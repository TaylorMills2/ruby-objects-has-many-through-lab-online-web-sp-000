class Patient

  attr_reader :name, :appointment, :doctor

  def initialize(name)
    @name = name
  end

  def new_appointment(doctor, date)
    Appointment.new(self, doctor, date)
  end

  def appointments
    Appointment.all.select do |appointment|
      appointment.patient == self
    end
  end

  def doctors
    Appointment.all.map do |appointment|
      appointment.doctor
    end
  end
end