class Customer
  include ActiveModel::Validations

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :email, presence: true
  validates :contact_no, presence: true

  attr_accessor :first_name, :last_name, :email ,:contact_no

  def initialize(first_name,last_name,email,contact_no)
    @first_name = first_name
    @last_name = last_name
    @email = email
    @contact_no = contact_no
  end

  def self.from_attributes(details)
    new(details[:first_name],details[:last_name],details[:email],details[:contact_no])
  end
end