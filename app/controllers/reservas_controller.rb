class ReservasController < ApplicationController
	def index
	end

	def create
	end

	def new
		@reserva=Reserva.new()
	end

	def check_available
		start_date=params[:reserva][:start_date]
		end_date=params[:reserva][:end_date]
		@quartos_disponiveis=Reserva.available(start_date,end_date)
	end


end
