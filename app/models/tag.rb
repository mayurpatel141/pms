class Tag < ActiveRecord::Base
  attr_accessible :first_name, :last_name, :username, :project_id

  belongs_to :project
end
