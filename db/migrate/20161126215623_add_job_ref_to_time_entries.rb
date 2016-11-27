class AddJobRefToTimeEntries < ActiveRecord::Migration[5.0]
  def change
    add_reference :time_entries, :job, foreign_key: true, index: true
  end
end
