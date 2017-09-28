class AddAvatarToActors < ActiveRecord::Migration[5.1]
  def change
    add_column :actors, :avatar, :string
  end
end
