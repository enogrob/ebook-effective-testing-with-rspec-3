#---
# Excerpted from "Effective Testing with RSpec 3",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material,
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose.
# Visit http://www.pragmaticprogrammer.com/titles/rspec3 for more book information.
#---
class CashCow
  def self.charge_card(card, amount)
    # ...
    puts "charged card: #{card}"
  end

  def self.bulk_charge_cards(cards_and_amounts)
    # ...
    cards_and_amounts.each do |card, _|
      puts "charged card: #{card}"
    end
  end
end
