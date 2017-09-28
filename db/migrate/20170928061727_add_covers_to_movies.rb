class AddCoversToMovies < ActiveRecord::Migration[5.1]
  def change
    add_column :movies, :covers, :json
  end
end
