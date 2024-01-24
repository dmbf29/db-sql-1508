require 'sqlite3'
DB = SQLite3::Database.new("patients_doctors.sqlite")

class Doctor
  def initialize(attributes = {})
    @id = attributes[:id] || attributes['id']
    @age = attributes[:age] || attributes['age']
    @first_name = attributes[:first_name] || attributes['first_name']
    @last_name = attributes[:last_name] || attributes['last_name']
    @specialty = attributes[:specialty] || attributes['specialty']
  end

  # Doctor.all
  def self.all
    DB.results_as_hash = true
    results = DB.execute('SELECT * FROM doctors')
    results.map do |doctor_hash|
      # p doctor_hash
      Doctor.new(doctor_hash)
    end
  end

  def self.find(id)
    DB.results_as_hash = true
    results = DB.execute('SELECT * FROM doctors WHERE id = ?', id).first
    # more here
  end

  def self.count
    results = DB.execute('SELECT COUNT(*) FROM doctors').first.first
  end
end

# @doctor_repository.all
# p DB.execute('SELECT * FROM doctors')
p Doctor.find(1)
