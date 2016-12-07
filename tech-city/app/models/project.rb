class Project < ApplicationRecord
    belongs_to :user
    validates :title, :description, :technology, :problem, :solution, :features,
    presence: true
end
