require 'rails_helper'

RSpec.describe "word_lists/show", type: :view do
  before(:each) do
    @word_list = assign(:word_list, WordList.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end
