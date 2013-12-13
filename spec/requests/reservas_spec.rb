require 'spec_helper'

describe "Reservas" do
	subject {page}
  describe "GET /reservas/new" do
  	before { visit '/reservas/new' }
  	
  		it {should have_title('Nova Reserva')}
  
    	it {should have_content("Escolha uma data")}
    



  end





end
