require 'rails_helper'

RSpec.describe NewWordController, type: :controller do

	# This should return the minimal set of attributes required to create a valid
  # Word. As you add validations to Word, be sure to
  # adjust the attributes here as well.
  let(:valid_word_attributes) {
    FactoryGirl.attributes_for(:word)
  }

  let(:invalid_word_attributes) {
    FactoryGirl.attributes_for(:invalid_word)
  }

  let(:valid_category_attributes) {
  	FactoryGirl.attributes_for(:category)
  }

  let(:invalid_category_attributes) {
	FactoryGirl.attributes_for(:invalid_category)
	}

	# This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # WordsController. Be sure to keep this updated too.
  let(:valid_session) { {} }


  describe "POST #create_word_and_category" do 
  	# context "with valid attributes" do
  	# 	it "creates a new word and a new category" do
  	# 		expect {
   #        post :create_word_and_category, word: FactoryGirl.attributes_for(:word), category: FactoryGirl.attributes_for(:category)
   #      }.to change(Word, :count).by(1)

   #      expect {
   #        post :create_word_and_category, word: FactoryGirl.attributes_for(:word), category: FactoryGirl.attributes_for(:category)
   #      }.to change(Category, :count).by(1)
  	# 	end

  	# 	it "assigns a newly created word as @word" do
   #      post :create_word_and_category, { :word => valid_word_attributes, :category => valid_category_attributes }, valid_session

   #      expect(assigns(:word)).to be_a(Word)
   #      expect(assigns(:word)).to be_persisted

   #      expect(assigns(:category)).to be_a(Category)
   #      expect(assigns(:category)).to be_persisted
   #    end

  	# 	it "assigns the new category to the new word" do
  	# 		post :create_word_and_category, word: FactoryGirl.attributes_for(:word), category: FactoryGirl.attributes_for(:category)

  	# 		expect(Word.last.categories.count).to eq(1)
  	# 	end

  	# 	it "redirects to the words_path" do 
  	# 		post :create_word_and_category, { :word => valid_word_attributes, :category => valid_category_attributes }, valid_session
  	# 		expect(response).to redirect_to(words_path)
  	# 	end
  	# end

  	# context "word has invalid params" do 
  	# 	it "assigns a newly created but unsaved word as @word" do
  	# 		post :create_word_and_category, {:word => invalid_word_attributes, :category => valid_category_attributes}, valid_session
   #      expect(assigns(:word)).to be_a_new(Word)
  	# 	end

  	# 	# would be better as 'renders new word template', but I don't know how to do that yet
  	# 	it "redirects to new_word path" do
   #      post :create_word_and_category, {:word => invalid_word_attributes, :category => valid_category_attributes}, valid_session
   #      expect(response).to redirect_to(new_word_path)
   #    end
  	# end

  	# context "category has invalid params" do
  	# 	it "assigns a newly created but unsaved category as @category" do
  	# 		post :create_word_and_category, {:word => valid_word_attributes, :category => invalid_category_attributes}, valid_session
   #      expect(assigns(:category)).to be_a_new(Category)
  	# 	end

  	# 	# would be better as 'renders new word template', but I don't know how to do that yet
  	# 	it "redirects to new_word path" do
   #      post :create_word_and_category, {:word => valid_word_attributes, :category => invalid_category_attributes}, valid_session
   #      expect(response).to redirect_to(new_word_path)
   #    end
  	# end

  end

end