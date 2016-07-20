class CreateEmployeesProjects < ActiveRecord::Migration
  def change
    create_table(:employees_projects) do |t|
    t.column(:employee_id, :integer)
    t.column(:project_id, :integer)
    end
    remove_column(:employees, :project_id, :integer)
  end
end
