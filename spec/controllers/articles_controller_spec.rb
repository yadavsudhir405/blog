require 'rails_helper'

RSpec.describe ArticlesController, type: :controller do
  include AuthHelper
  describe "#new" do
    before(:example) do
      http_login
    end
    it "should open the new articlpe page " do
      @article = Article.new
      get :new

      expect(response).to render_template('new')
    end
  end
end
