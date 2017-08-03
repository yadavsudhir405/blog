require 'rails-helper'

Rspec.describe ArticlesController, type: :controller do
  describe "GET #new" do
    it "respondes successfully with  HTTP status code 200" do
      get :new
      expect(response).to be_success
      expect(response).to have_http_status(200)
    end

  end
end