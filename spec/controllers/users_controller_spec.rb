require 'rails_helper'

RSpec.describe UsersController, type: :controller do

  let(:user) { User.create({ username:"dio", password:"dio" }) }

  describe 'users #create' do

    it "should create user" do
      expect(user_params[:username]).to eq user.username
    end
    it "should redirect to user path" do
      expect(response).to redirect_to user_path(user.id)
    end

  end

end
