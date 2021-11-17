class RenameDescriptionToPresentationInServices < ActiveRecord::Migration[6.0]
  def change
    rename_column :services, :description, :presentation
  end
end
