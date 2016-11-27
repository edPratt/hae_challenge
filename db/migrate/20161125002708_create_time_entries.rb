class CreateTimeEntries < ActiveRecord::Migration[5.0]
  def change
    create_table :time_entries do |t|
      t.decimal :time_spent
      t.date :date
      t.text :summary

      t.timestamps
    end
  end
end
