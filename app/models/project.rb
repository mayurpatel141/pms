class Project < ActiveRecord::Base
  attr_accessible :end_date, :name, :start_date, :description, :tags_attributes

  validates :name,  :presence => true
  validates :description, :presence => true,
                    :length => { :minimum => 3 }

   has_many :tasks, :dependent => :destroy
   has_and_belongs_to_many :tags

    accepts_nested_attributes_for :tags, :allow_destroy => :true,
    :reject_if => proc { |attrs| attrs.all? { |k, v| v.blank? } }

end
