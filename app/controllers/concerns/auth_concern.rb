module AuthConcern
  extend ActiveSupport::Concern

  included do
    before_action :authenticate
  end

  def authenticate
    unless params[:userid] == 'abc'
    render json: {errors: 'Unauthorised request'}
    end
  end

end