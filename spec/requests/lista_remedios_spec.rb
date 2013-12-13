require 'spec_helper'

describe "ListaRemedios" do
  describe "GET /lista_remedios" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get lista_remedios_index_path
      response.status.should be(200)
    end
  end
end
