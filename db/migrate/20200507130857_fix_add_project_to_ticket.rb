class FixAddProjectToTicket < ActiveRecord::Migration[6.0]
  def change
    remove_column :tickets, :project_id
    add_reference :tickets, :project, foreign_key: true
  end
end
