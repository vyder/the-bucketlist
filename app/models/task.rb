class Task < ActiveRecord::Base
  attr_accessible :done, :name
  
  validates_presence_of :name
  before_create :mark_as_incomplete
  
  scope :done, where("done = ?", true)
  scope :left, where("done = ?", false)
  
  def mark_as_incomplete
    self.done = false
    true # this method returns false otherwise :\
  end
end
