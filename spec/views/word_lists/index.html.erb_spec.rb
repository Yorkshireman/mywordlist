require 'rails_helper'

RSpec.describe "word_lists/index", type: :view do
  before(:each) do
    assign(:word_lists, [
      WordList.create!(),
      WordList.create!()
    ])
  end

  it "renders a list of word_lists" do
    render
  end
end
