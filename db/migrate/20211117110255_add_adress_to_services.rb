class AddAdressToServices < ActiveRecord::Migration[6.0]
  def change
    add_column :services, :adress, :string
  end
end
