require 'rails_helper'

RSpec.describe "words/new", type: :view do
  before(:each) do
    assign(:word, Word.new(
      :title => "MyString",
      :description => "MyText",
      :user => nil
    ))
  end

  it "renders new word form" do
    render

    assert_select "form[action=?][method=?]", words_path, "post" do

      assert_select "input#word_title[name=?]", "word[title]"

      assert_select "textarea#word_description[name=?]", "word[description]"

    end
  end
end
