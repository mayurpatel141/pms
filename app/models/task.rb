class Task < ActiveRecord::Base
  belongs_to :project
  attr_accessible :description, :name
  validates :description, :presence => true, :length => { :minimum => 5}
  validates :name, :presence => true

end
