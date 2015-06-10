require 'rails_helper'

RSpec.describe "quotes/new", type: :view do
  before(:each) do
    assign(:quote, Quote.new(
      :content => "MyText",
      :author => "MyString"
    ))
  end

  it "renders new quote form" do
    render

    assert_select "form[action=?][method=?]", quotes_path, "post" do

      assert_select "textarea#quote_content[name=?]", "quote[content]"

      assert_select "input#quote_author[name=?]", "quote[author]"
    end
  end
end
