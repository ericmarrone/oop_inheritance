require_relative 'multilinguist'

class QuoteCollector < Multilinguist

  def initialize
    super
    @quotes = [
    "Books had instant replay long before televised sports." ,
    "Furious activity is no substitute for understanding.",
    "A poor joke must invent its own laughter.",
    "To appreciate nonsense requires a serious interest in life.",
    "Reason is the wise man's guide, example the fool's."
    ]
  end

  def random_quote
    self.say_in_local_language("#{@quotes[rand(@quotes.size)]}")

  end

  def quotes
    @quotes
  end

  def add_quote(quote)
    @quotes << quote
  end

end

bob = QuoteCollector.new
bob.add_quote("TEXT TEXT TEXT")
# puts bob.quotes
bob.travel_to("Italy")
puts bob.random_quote
