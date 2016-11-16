require('rspec')
require('rock')

describe('String#beats?') do

  it('returns true if rock is the object and scissors is the argument') do
    expect('rock'.beats?('scissors')).to(eq("Player 1 Winner"))
  end

  it('returns true if scissors is the object and paper is the argument') do
    expect('scissors'.beats?('paper')).to(eq("Player 1 Winner"))
  end

  it('returns true if paper is the object and rock is the argument') do
    expect('paper'.beats?('rock')).to(eq("Player 1 Winner"))
  end
  it('returns true if paper is the object and paper is the argument') do
    expect('paper'.beats?('paper')).to(eq("tie"))
  end
  it('returns false if paper is the object and scissors is the argument') do
    expect('paper'.beats?('scissors')).to(eq("Player 2 Winner"))
  end

end
