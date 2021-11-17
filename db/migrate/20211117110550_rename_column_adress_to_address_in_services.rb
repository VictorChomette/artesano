class RenameColumnAdressToAddressInServices < ActiveRecord::Migration[6.0]
  def change
    rename_column :services, :adress, :address
  end
end
