require 'rails_helper'

RSpec.describe MainController, type: :controller do
  describe 'GET #index' do
    it 'response successfully with an HTTP 200 status code' do
      get :index
      expect(response).to be_success
      expect(response).to have_http_status(200)
    end

    it "renders the index template" do
      get :index
      expect(response).to render_template("index")
    end

    # it "loads all of the posts into @posts" do
    #   post1, post2 = Post.create!, Post.create!
    #   get :index

    #   expect(assigns(:posts)).to match_array([post1, post2])
    # end
  end
  
  describe 'GET #about' do
    it 'response successfully with an HTTP 200 status code' do
      get :about
      expect(response).to be_success
      expect(response).to have_http_status(200)
    end

    it "renders the about template" do
      get :about
      expect(response).to render_template("about")
    end
  end

  describe 'GET #contact_info' do
    it 'response successfully with an HTTP 200 status code' do
      get :contact_info
      expect(response).to be_success
      expect(response).to have_http_status(200)
    end

    it "renders the index template" do
      get :contact_info
      expect(response).to render_template("contact_info")
    end
  end
end
