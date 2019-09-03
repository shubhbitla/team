class CountriesController < ApplicationController
 def index
		@countries = Country.all
	end

	def create
		@country = Country.new(country_params)
 
	    @country.save
	    redirect_to countries_path
	end
	
	def show
	end



	private

    # Never trust parameters from the scary internet, only allow the white list through.
    	def country_params
      		params.require(:country).permit(:name)
    	end
 end
