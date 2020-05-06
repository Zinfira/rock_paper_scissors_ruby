class RPS
  def initialize(hand1, hand2)
    @hand1 = hand1
    @hand2 = hand2
  end



  score = {"rock" => 0, "paper" => 1, "scissors" => 2}

  def wins?(hand1, hand2)
    hand1 = "rock"
    hand2 = "scissors"
    if hand1 == "rock" && hand2 == "scissors"
      true
    else
      false
    end
  end
end