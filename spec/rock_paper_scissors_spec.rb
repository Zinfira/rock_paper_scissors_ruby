require("rspec")
require("rock_paper_scissors")
require('pry')


describe ("#wins?") do
  it("returns true if rock is the argument and scissors is the other argument") do
    game = RPS.new()
    game.hand = "rock"
    game.hand2 = "scissors"
    expect(game.wins?).to(eq(true))
  end

  it("returns true for hand1 if paper is the argument and rock is the argument for hand2") do
    game = RPS.new()
    game.hand = "rock"
    game.hand2 = "scissors"
    expect(game.wins?).to(eq(true))
  end

  it("returns true for hand1 if scissors is the argument and paper is the argument for hand2") do
    game = RPS.new()
    game.hand = "rock"
    game.hand2 = "scissors"
    expect(game.wins?).to(eq(true))
  end

  it("returns 'TIE!' rock is the argument for hand1 and hand2") do
    game = RPS.new()
    game.hand = "rock"
    game.hand2 = "scissors"
    expect(game.wins?).to(eq("TIE!"))
  end
end

describe("#computer") do
  it("randomly returns rock or paper or scissors")do
    game = RPS.new()
    game.hand = "rock"
    expect(game.computer).to(eq(" "))
  end
end

describe("#setPlayerHand") do
  it("returns what hand the user choose")do
    game = RPS.new()
    expect(game.setPlayerHand).to(eq("rock"))
  end
end

