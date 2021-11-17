class AddColumnDescriptionToIntervention < ActiveRecord::Migration[6.0]
  def change
    add_column :interventions, :description, :string
  end
end
