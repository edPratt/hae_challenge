class AddJobToTimeEntry < ActiveRecord::Migration[5.0]
  def change
    add_reference :timeentries, :job, index: true
  end
end
