class UserNote < ActiveRecord::Base
  belongs_to :user
  belongs_to :athlete

  def to_s
    note
  end
end
