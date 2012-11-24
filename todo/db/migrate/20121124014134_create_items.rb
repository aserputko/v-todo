class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :name
      t.boolean :status
      t.integer :project_id

      t.timestamps
    end
  end
end
