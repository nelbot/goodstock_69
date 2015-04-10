class Concert < ActiveRecord::Base 
  validates :artist, presence: true
  validates :date, presence: true
  validates :venue, presence: true
  validates :city, presence: true
  validates :ticket_price, presence: true
  validates :description, presence: true

  def self.todays_concerts # add the self because we want to make it a class method, not just an instance of one concert
    where("date < ?", Date.today)
  end
end
