class CreateTasks < ActiveRecord::Migration[7.0]
  def change
    create_table :tasks do |t|
      t.string :title
      t.string :description
      t.string :status
      t.integer :priority
      t.date :limite_date

      t.timestamps
    end
  end
end
