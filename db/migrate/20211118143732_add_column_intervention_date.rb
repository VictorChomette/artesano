class AddColumnInterventionDate < ActiveRecord::Migration[6.0]
  def change
    add_column :interventions, :date, :date
  end
end
