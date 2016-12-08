class AddSolutionToProjects < ActiveRecord::Migration[5.0]
  def change
    add_column :projects, :solution, :text
  end
end
