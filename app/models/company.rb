class Company < ApplicationRecord
    has_many :offices
    has_many :buildings, through: :offices
    has_many :employees
    

    def total_rent
        arr = []
        self.buildings.each do |b|
            arr << b.rent_per_floor
        end
        arr.sum
    end
end
