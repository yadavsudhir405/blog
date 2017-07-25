class Person < ActiveRecord::Base

  validates :name, presence: true, length: { maximum: 5, minimum: 10}, message: "Invalid name"

end
