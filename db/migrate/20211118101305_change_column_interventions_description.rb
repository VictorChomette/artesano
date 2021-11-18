class ChangeColumnInterventionsDescription < ActiveRecord::Migration[6.0]
  def change
    change_column :interventions, :description, :text
  end
end
