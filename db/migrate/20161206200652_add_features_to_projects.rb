class AddFeaturesToProjects < ActiveRecord::Migration[5.0]
  def change
    add_column :projects, :features, :text
  end
end
