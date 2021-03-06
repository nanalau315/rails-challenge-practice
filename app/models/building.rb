class Building < ApplicationRecord
  has_many :offices
  has_many :companies, through: :offices
  
  validates :name, :country, :address, presence: true
  validates :rent_per_floor, :number_of_floors, numericality: {only_integer: true}
  validates :number_of_floors, numericality: {less_than: 1000}
  

  def number_of_floors_available
    # Will not work until relationships and schema are corretly setup

    all_floors = Array(1..self.number_of_floors)
    self.offices.each do |office|
      all_floors.delete(office.floor)
    end
    all_floors
  end

  def empty_offices
    number_of_floors_available.map { |f| offices.build(floor: f) }
  end

  def num_employees
    arr = []
    self.offices.each do |o|
      o.company.employees.map do |e|
        arr << e.name
      end
    end
    arr.length
  end

  # def num_employees
  #   self.offices.map {|o| o.company.employees.name}.length
  # end



end
