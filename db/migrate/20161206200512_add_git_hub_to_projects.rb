class AddGitHubToProjects < ActiveRecord::Migration[5.0]
  def change
    add_column :projects, :github, :string
  end
end
