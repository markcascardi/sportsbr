class UserNote < ActiveRecord::Base
  belongs_to :user
  belongs_to :athlete
  
  validates_presence_of :note

  def to_s
    note
  end
end
