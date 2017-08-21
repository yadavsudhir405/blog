require 'rails_helper'

RSpec.describe ArticlesController, type: :controller do
  describe "#new" do
    it "should open the new articlpe page " do
      @article = Article.new
      get :new

      expect(response).to be_success
    end
  end
end
