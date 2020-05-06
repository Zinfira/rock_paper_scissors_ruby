require("rspec")
require("rock_paper_scissors")
require('pry')


describe ("#wins?") do
  it("returns true if rock is the argument and scissors is the other argument") do
    game = RPS.new("rock", "scissors")
    expect(game.wins?).to(eq(true))
  end

  it("returns true for hand1 if paper is the argument and rock is the argument for hand2") do
    game = RPS.new("paper", "rock")
    expect(game.wins?).to(eq(true))
  end

  it("returns true for hand1 if scissors is the argument and paper is the argument for hand2") do
    game = RPS.new("scissors", "paper")
    expect(game.wins?).to(eq(true))
  end

  it("returns 'TIE!' rock is the argument for hand1 and hand2") do
  game = RPS.new("rock", "rock")
    expect(game.wins?).to(eq("TIE!"))
  end
end

describe("#computer") do
  it("randomly returns rock or paper or scissors")do
    game = RPS.new("rock", "paper")
    expect(game.computer).to(eq("paper"))
  end
end
