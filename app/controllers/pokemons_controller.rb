class PokemonsController < ApplicationController

	def capture
		@pokemon = Pokemon.find(params[:id])
		@pokemon.trainer_id = current_trainer.id
		@pokemon.save
		redirect_to "/"
	end

	def damage
		@pokemon = Pokemon.find(params[:id])
		@pokemon.health = @pokemon.health - 10
		if @pokemon.health <= 0
			@pokemon.destroy
		else
			@pokemon.save
		end
		redirect_to current_trainer
	end
	
	def new
		@pokemon = Pokemon.new
	end

	def create
		@pokemon = Pokemon.create(name: params[:pokemon][:name], ndex: params[:pokemon][:ndex], health: 100, level: 1, trainer: current_trainer)
		if @pokemon.valid?
			redirect_to trainer_path(current_trainer)
		else
			flash[:error] = @pokemon.errors.full_messages.to_sentence
			redirect_to new_pokemon_path
		end
	end

end
