class Tag < ActiveRecord::Base
  attr_accessible :first_name, :last_name, :username, :project_id

  has_and_belongs_to_many :projects
end
