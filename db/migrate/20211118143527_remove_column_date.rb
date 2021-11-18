class RemoveColumnDate < ActiveRecord::Migration[6.0]
  def change
    remove_column :interventions, :date
  end
end
