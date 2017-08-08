class Trip < ActiveRecord::Base

  validates :traveller, presence: true, :length => { minimum: 5,maximum: 20 }
  validates :from, presence: true, length: {:minimum => 5,maximum: 20}
  validates :to, presence: true, length: {:minimum => 5,maximum: 20}
  validates_presence_of :amount ,:message =>"Amount can't be empty"
  validates_format_of :amount, :with =>/\A\d+\Z/, :message=>"Amount can have only numbers"
end
