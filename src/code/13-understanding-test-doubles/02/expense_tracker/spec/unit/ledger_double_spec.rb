#---
# Excerpted from "Effective Testing with RSpec 3",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material,
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose.
# Visit http://www.pragmaticprogrammer.com/titles/rspec3 for more book information.
#---
RSpec.describe 'Using a ledger double' do
  example 'a pure double' do
    ledger = double('ExpenseTracker::Ledger')
    allow(ledger).to receive(:record)
  end

  example 'a verifying double' do
    ledger = instance_double('ExpenseTracker::Ledger')
    allow(ledger).to receive(:record)
  end
end
