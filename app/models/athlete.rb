class Athlete < ActiveRecord::Base
  belongs_to :team
  has_many :user_notes

  def to_s
    "#{firstname} #{lastname}"
  end
end
