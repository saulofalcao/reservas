class RemediosController < ApplicationController
	def index
		#@remedios=Remedio.all
		@remedios=Remedio.order(params[:sort])
	end

	def new
	end

end
