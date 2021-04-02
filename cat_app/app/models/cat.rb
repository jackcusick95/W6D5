
class Cat < ApplicationRecord

    COLORS = ["blue", "red", "yellow", "white", "green", "black"]

    validates :color, inclusion: { in: COLORS}
    validates :sex, inclusion: { in: ["M","F"] }
end 