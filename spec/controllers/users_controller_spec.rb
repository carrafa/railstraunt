require 'rails_helper'

RSpec.describe UsersController, type: :controller do

  let(:user) { User.create({ username:"dio", password:"dio" }) }

  describe 'users #create' do
    context 'when user logs in with valid password' do

      before :each do
        user
      end

      it "should create user in db" do
        expect(User.first).to eq user
      end

      it "should redirect to root" do
        expect(response).to redirect_to root_path
      end

    end

  end

end
