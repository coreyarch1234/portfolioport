class Project < ApplicationRecord
    belongs_to :user
    has_attached_file :image, styles: { large: "150x150>", medium: "50x50>", thumb: "50x50>#"}
    validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/
    validates :title, presence: true
    validates :description, presence: true
    validates :technology, presence: true
    validates :problem, :solution, presence: true
    validates :features, presence: true
    before_save do |p|
        p.description = p.description.humanize
        p.technology = p.technology.humanize
        p.problem = p.problem.humanize
        p.solution = p.solution.humanize
    end
end
