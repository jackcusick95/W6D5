
class Cat < ApplicationRecord

    COLORS = ["blue", "red", "yellow", "white", "green", "black"]

    validates :color, inclusion: { in: COLORS}
    validates :sex, inclusion: { in: ["M","F"] }
    validates_presence_of :color, :birth_date, :name, :sex, :description

    def age
        time_ago_words(self.birth_date)
    end 
end 