class AddUserIdToPokemon < ActiveRecord::Migration
  def change
  	add_column :pokemons, :trainer, :string
  end
end
