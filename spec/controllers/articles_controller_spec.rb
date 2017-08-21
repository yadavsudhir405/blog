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

      expect(response).to be_success
      expect(response).to render_template('new')
    end
  end
  describe "show index page" do
      it "should open the index page successfully " do
        get :index

        expect(response).to be_success
        expect(response).to render_template('index')
      end
  end

  desc
end
