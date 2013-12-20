class ReservasController < ApplicationController
	def index
	end

	

	def new
		@reserva=Reserva.new()

	end

	def check_available
		
		start_date=params[:reserva][:start_date]
		end_date=params[:reserva][:end_date]
		@quartos_disponiveis=Reserva.available(start_date,end_date)
		@start_date=start_date
		@end_date=end_date

		# session[:reserva_id]=@reserva.id
		# @s=session[:reserva_id]
	end

	def create
		r=Reserva.new()
		r.start_date=params[:start_date]
		r.end_date=params[:end_date]
		r.quarto_id=params[:quarto_id]
		if r.save then
			flash[:sucess]="Reserva criada com sucesso!"
			redirect_to reservas_path
		else
			flash[:errors]="Erro ao criar reserva!"
		end
			


	end


end
