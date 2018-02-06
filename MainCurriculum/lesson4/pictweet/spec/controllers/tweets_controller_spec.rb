require 'rails_helper'

# describe TweetsController do
#   describe 'GET #new' do
#     it "populates an array of tweets ordered by created_at DESC" do
#       tweets = create_list(:tweet, 3)
#       get :index
#       expect(assigns(:tweets)).to match(tweets.sort{ |a, b| b.created_at <=> a.created_at } )
#     end
# 
#     it "renders the :index template" do
#       get :index
#       expect(response).to render_template :index
#     end
# 
#     it "renders the :index template" do
# 
#     end
# 
#     it "render the :new template" do
#       get :new
#       expect(response).to render_template :new
#     end
# 
#     it "assigns the requested contact to @tweet" do
#       tweet = create(:tweet)
#       get :edit, id: tweet
#       expect(assigns(:tweet)).to eq tweet
#     end
# 
#     it "render the :edit template" do
#       tweet = create(:tweet)
#       get :edit, id: tweet
#       expect(response).to render_template :edit
#     end
#   end
# end
