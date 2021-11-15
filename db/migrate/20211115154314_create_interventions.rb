class CreateInterventions < ActiveRecord::Migration[6.0]
  def change
    create_table :interventions do |t|

      t.timestamps
    end
  end
end
