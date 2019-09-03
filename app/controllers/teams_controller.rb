class TeamsController < ApplicationController
	def index
		
	end

	def create
		@player = Player.new(team_params)
 
	    @player.save
	    redirect_to teams_path
	end


	def show
		@country = Country.find(params[:id])
		@country = Country.where(id: @country).first
		@players = Player.where(country_id: @country)
	end

	def edit
	  @player = Player.find(params[:id])
	end


	def update
	  @player = Player.find(params[:id])
	  if @player.update(team_params)
	    redirect_to @team
	  else
	    render 'edit'
	  end
	end


	def destroy
	  @player = Player.find(params[:id])
	  @player.destroy
	 
	  redirect_to countries_path
	end

	private

    	def team_params
      		params.require(:player).permit(:name, :age, :height, :role, :country_id)
    	end



 end
