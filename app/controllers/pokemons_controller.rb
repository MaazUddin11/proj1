class PokemonsController < ApplicationController
	def capture
		@this_pokemon = Pokemon.find(params[:id])
		@this_pokemon.trainer_id = current_trainer.id
		@this_pokemon.save
		redirect_to :root
	end

	def damage
		@this_pokemon = Pokemon.find(params[:id])
		@this_pokemon.health -= 10
		if @this_pokemon.health <= 0
			@this_pokemon.destroy
		else
			@this_pokemon.save
		end
		redirect_to :controller => 'trainers', :action => 'show', id: @this_pokemon.trainer_id
	end

	def create
		@new_pokemon = Pokemon.new(pokemon_params)
		@new_pokemon.health = 100
		@new_pokemon.level = 1
		@new_pokemon.trainer_id = current_trainer.id
		if @new_pokemon.save
			redirect_to :controller => 'trainers', :action => 'show', id: current_trainer.id
		end
	end

	def new
		@new_pokemon = Pokemon.new
	end

	def pokemon_params
		params.require(:pokemon).permit(:name)
	end
end