class Doctor
  attr_accessor :name

  def initialize(name)
    @name = name
    @appointments = []
  end

  def add_appointment(app)
    @appointments << app
    app.patient = self
  end

  def appointments
    @appointments
  end

  def patients
    @appointments.collect do |pat|
      pat.patient
    end
  end
end
