class AddTitleToService < ActiveRecord::Migration[6.0]
  def change
    add_column :services, :title, :string
  end
end
