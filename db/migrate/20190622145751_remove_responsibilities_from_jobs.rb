class RemoveResponsibilitiesFromJobs < ActiveRecord::Migration[5.2]
  def change
    remove_column :jobs, :responsibilities, :string
  end
end
