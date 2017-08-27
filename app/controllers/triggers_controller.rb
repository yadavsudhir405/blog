class TriggersController < ApplicationController

  def new

  end

  def create
    set_locale
    p I18n.locale
    DemoJob.perform_later(temp.require(:name), temp.require(:count))
    render text: "Performing your requests in background"
  end

  private

   def set_locale
     I18n.locale = :hi
   end
  def demo_params
    params.permit(demo:[:name , :count])
  end
end
