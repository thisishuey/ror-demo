class CreateResponsibilities < ActiveRecord::Migration[5.2]
  def change
    create_table :responsibilities do |t|
      t.text :content
      t.references :job, foreign_key: true

      t.timestamps
    end
  end
end
