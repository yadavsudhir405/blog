class Person < ActiveRecord::Base

  validates_format_of :name, :with => /\A\w+\z]/, :on => create, :message => "Name should contains only alphabets"
  validates :name, presence: true, length: { maximum: 5, minimum: 10}, message: "Invalid name"

end
