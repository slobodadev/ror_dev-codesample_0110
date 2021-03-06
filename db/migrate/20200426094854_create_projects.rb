class CreateProjects < ActiveRecord::Migration[6.0]
  def change
    create_table :projects do |t|
      t.string     :name, limit: 120, null: false
      t.references :user, index: true

      t.timestamps
    end
  end
end
