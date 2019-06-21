class AddFieldsToJobs < ActiveRecord::Migration[5.2]
  def change
    add_column :jobs, :title, :string
    add_column :jobs, :company, :string
    add_column :jobs, :city, :string
    add_column :jobs, :state, :string
    add_column :jobs, :position, :string
    add_column :jobs, :rate, :string
    add_column :jobs, :favorite, :boolean
    add_column :jobs, :expired, :boolean
    add_column :jobs, :score, :string
    add_column :jobs, :description, :string
    add_column :jobs, :responsibilities, :string
    add_column :jobs, :skills, :string
  end
end
