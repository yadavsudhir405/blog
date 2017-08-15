class Product < ApplicationRecord

  before_validation :validation_done
  after_initialization :initilization_done


  private
   def validation_done
     p "Validation is done!!!"
   end
  def initilization_done
    p "initilization_done is done!!!"
  end

end