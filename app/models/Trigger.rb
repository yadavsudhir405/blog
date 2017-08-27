class Trigger
  include ActiveModel::Validations

  validates :name,presence: true
  validates :count, presence: true

  attr_reader :name, :count

  def initialize(name, count)
    @name = name
    @count = count
  end

end