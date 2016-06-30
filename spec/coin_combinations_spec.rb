require('coin_combinations')
require("rspec")
require("sinatra")
require('capybara/rspec')

describe('Float#change') do
  it("takes an amount and returns change in quarters") do
    expect((0.75).change()).to(eq("3 quarters"))
  end
  it("takes an amount and returns change in quarters and dimes") do
    expect((0.85).change()).to(eq("3 quarters 1 dime"))
  end
  it("takes an amount and returns change in quarters, dimes and nickles") do
    expect((0.90).change()).to(eq("3 quarters 1 dime 1 nickel"))
  end
end
