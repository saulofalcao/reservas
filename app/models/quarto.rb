class Quarto < ActiveRecord::Base
	has_many :reservas
	self.joins(:reservas).where("? == start_date",start_date)
end
