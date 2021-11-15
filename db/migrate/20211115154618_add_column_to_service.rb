class AddColumnToService < ActiveRecord::Migration[6.0]
  def change
    add_column :services, :speciality, :string
    add_column :services, :description, :string
    add_reference :services, :user, null: false, foreign_key: true
  end
end
