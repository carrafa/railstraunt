require 'rails_helper'

RSpec.describe SessionsController, type: :controller do

      let(:user) { User.create({ username:"dio", password:"dio", password_confirmation: "dio" }) }

      describe 'sessions #create' do


        context 'when user logs in with valid password' do

          let :credentials do
            {:username => user.username, :password => user.password }
          end


          before :each do
            user = User.create(credentials)
            post :create, credentials
          end

        it 'Sets session cookie with user ID' do
          expect(user.id).to eq session[:user_id]
        end

        it 'redirects to user path' do
          expect(response).to redirect_to user_path(user.id)
        end


      end

    end

end
