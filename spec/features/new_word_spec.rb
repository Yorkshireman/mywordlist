require 'rails_helper.rb'

describe 'New word' do 
	it "Adds a new word with a category and displays the result" do 
		visit new_word_path
		fill_in 'new_word', with: "NewWord"
		fill_in 'Definition:', with: "Awesome definition"
		fill_in 'Category:', with: "First Category"
		click_on('Create')
		expect(current_path).to eq(words_path)
		expect(page).to have_content("NewWord")
		expect(page).to have_content("Awesome definition")
		expect(page).to have_content("First Category")
	end
end