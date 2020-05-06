class RPS

  def initialize(hand1, hand2)
    @hand1 = hand1
    @hand2 = hand2
    @@score1 = 0
    @@score2 = 0
  end

  # score = {"rock" => 0, "paper" => 1, "scissors" => 2}
  def computer
    computer_list = ["rock", "paper", "scissors"]
    @hand2 = computer_list[rand(3)]
  end

  def wins?
    if @hand1 == @hand2
      "TIE!"
    else
      if (@hand1 == "rock") & (@hand2 == "scissors") | (@hand1 === "paper") & (@hand2 == "rock") | (@hand1 === "scissors") & (@hand2 == "paper")
        @@score1 += 1
        true
      else 
        @@score2 += 1
        false
      end
    end
  end
  
end