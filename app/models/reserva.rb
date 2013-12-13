class Reserva < ActiveRecord::Base
 # validate :uniqueness_of_date_range
  belongs_to :quarto
  validate :first_found_room
  private
  def first_found_room
  	errors.add("Sem quartos disponiveis") unless 
  		Quarto.joins(:reservas).where("? == start_date",
  						start_date).count != 0
  	end

  # private
  # def uniqueness_of_date_range
  # 	# if Reserva.where("? >= start_date AND ? <= end_date",
  # 	# 				start_date, start_date).count == 0
  #  #  	errors.add(:start_date, "is not available")
  #  #  elsif Reserva.where("? >= start_date AND ? <= end_date",
  #  #                  end_date, end_date).count == 0
  #  #  	errors.add(:end_date, "is not available")
  #  #  end

  # end
end