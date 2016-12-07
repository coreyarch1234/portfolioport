class AddProblemToProjects < ActiveRecord::Migration[5.0]
  def change
    add_column :projects, :problem, :text
  end
end
