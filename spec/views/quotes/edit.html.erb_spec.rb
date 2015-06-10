require 'rails_helper'

RSpec.describe "quotes/edit", type: :view do
  before(:each) do
    @quote = assign(:quote, Quote.create!(
      :content => "MyText",
      :author => "MyString"
    ))
  end

  it "renders the edit quote form" do
    render

    assert_select "form[action=?][method=?]", quote_path(@quote), "post" do

      assert_select "textarea#quote_content[name=?]", "quote[content]"

      assert_select "input#quote_author[name=?]", "quote[author]"
    end
  end
end
