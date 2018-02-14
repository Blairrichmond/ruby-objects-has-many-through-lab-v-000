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

  def genres
    @songs.collect do |song|
      song.genre
    end
  end
end
