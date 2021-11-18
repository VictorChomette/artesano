class ChangeColumnNewServicesPresentation < ActiveRecord::Migration[6.0]
  def change
    change_column :services, :presentation, :text
  end
end
