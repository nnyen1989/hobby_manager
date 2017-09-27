class CreateActors < ActiveRecord::Migration[5.1]
  def change
    create_table :actors do |t|
      t.string :name_actor
      t.string :birth_day
      t.string :country

      t.timestamps
    end
  end
end
