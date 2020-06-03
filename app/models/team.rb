class Team < ActiveRecord::Base
  belongs_to :season
  belongs_to :sport
  has_many :athletes

  def to_s
    "#{season} #{sport}"
  end
end
