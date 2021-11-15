class AddColumnToIntervention < ActiveRecord::Migration[6.0]
  def change
    add_column :interventions, :date, :string
    add_column :interventions, :price, :string
    add_column :interventions, :rating, :string
    add_column :interventions, :validated, :boolean
    add_reference :interventions, :service, null: false, foreign_key: true
    add_reference :interventions, :user, null: false, foreign_key: true
  end
end
