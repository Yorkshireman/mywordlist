module QuotesHelper

	random_quote = Quote.order("RANDOM()").first

end
