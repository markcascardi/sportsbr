class Sport < ActiveRecord::Base
  has_many :teams

  def to_s
    "#{name} - #{gender}"
  end
end
