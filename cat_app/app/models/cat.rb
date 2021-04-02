require "action_view"
require "action_view/helpers"
class Cat < ApplicationRecord
    include ActionView::Helpers::DateHelper

    COLORS = ["blue", "red", "yellow", "white", "green", "black"]

    validates :color, inclusion: { in: COLORS}
    validates :sex, inclusion: { in: ["M","F"] }
    validates_presence_of :color, :birth_date, :name, :sex, :description

    def age
        time_ago_in_words(self.birth_date)
    end 

end 