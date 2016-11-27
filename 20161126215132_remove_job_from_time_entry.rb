class RemoveJobFromTimeEntry < ActiveRecord::Migration[5.0]
  def change
    remove_reference :time_entries, :job, foreign_key: true
  end
end
