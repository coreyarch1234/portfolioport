class AddTechnologyToProjects < ActiveRecord::Migration[5.0]
  def change
    add_column :projects, :technology, :text
  end
end
