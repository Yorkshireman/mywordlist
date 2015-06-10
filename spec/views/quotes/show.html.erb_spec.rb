require 'rails_helper'

RSpec.describe "quotes/show", type: :view do
  before(:each) do
    @quote = assign(:quote, Quote.create!(
      :content => "MyText",
      :author => "Author"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/Author/)
  end
end
