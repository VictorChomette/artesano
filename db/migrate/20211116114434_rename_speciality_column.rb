class RenameSpecialityColumn < ActiveRecord::Migration[6.0]
  def change
    rename_column :services, :speciality, :specialty
  end
end
