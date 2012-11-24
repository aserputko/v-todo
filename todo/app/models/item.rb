class Item < ActiveRecord::Base
  attr_accessible :name, :project_id, :status
  belongs_to :project

  validates :name, :presence => true
  validates :project_id, :presence => true
end
