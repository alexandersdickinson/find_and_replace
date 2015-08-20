require('find_and_replace')
require('rspec')

describe('String#find_and_replace') do
  it('finds and replaces whole words') do
    expect('The cow jumped over the moon.'.find_and_replace('cow', 'elephant')).to(eq('The elephant jumped over the moon.'))
  end
end