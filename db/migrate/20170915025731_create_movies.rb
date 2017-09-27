class CreateMovies < ActiveRecord::Migration[5.1]
  def change
    create_table :movies do |t|
      t.string :name_movie
      t.string :category
      t.string :manufacture
      t.references :actor, foreign_key: true

      t.timestamps
    end
  end
end
