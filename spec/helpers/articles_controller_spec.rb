require 'rails_helper'
require 'articles_controller'

RSpec.describe ArticlesController, type: :helper do
  it 'checks the search for prime numbers' do
    expect(helper.find_prime_numbers(10)).to eq([2, 3, 5, 7])
    expect(helper.find_prime_numbers(1)).to eq([])
    expect(helper.find_prime_numbers(20)).to eq([2, 3, 5, 7, 11, 13, 17, 19])
  end

  it 'checks the search for prime numbers inside the interval' do
    expect(helper.foo_request([2, 3, 5, 7, 11, 13, 17, 19], 10)).to eq('11 13 17 19 ')
  end

  it 'checks result' do
    expect(helper.foo_result(10)).to eq('11 13 17 19 ')
    expect(helper.foo_result(6)).to eq('ERROR: not_found')
  end
end