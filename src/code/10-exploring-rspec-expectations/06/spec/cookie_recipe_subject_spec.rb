#---
# Excerpted from "Effective Testing with RSpec 3",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material,
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose.
# Visit http://www.pragmaticprogrammer.com/titles/rspec3 for more book information.
#---
class CookieRecipe
  attr_reader :ingredients

  def initialize
    @ingredients = [:butter, :milk, :flour, :sugar, :eggs, :chocolate_chips]
  end
end

RSpec.describe CookieRecipe, '#ingredients' do
  subject { CookieRecipe.new.ingredients }
  it { is_expected.to include(:butter, :milk, :eggs) }
  it { is_expected.not_to include(:fish_oil) }
end
