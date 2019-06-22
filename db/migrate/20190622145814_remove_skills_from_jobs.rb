class RemoveSkillsFromJobs < ActiveRecord::Migration[5.2]
  def change
    remove_column :jobs, :skills, :string
  end
end
