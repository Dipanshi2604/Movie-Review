class Movie < ApplicationRecord
  def self.released
    where("released_on < ?",Time.now).order("released_on")
  end
  def floop?
    total_gross < 50000
  end
end
