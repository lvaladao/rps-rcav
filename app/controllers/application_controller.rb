class ApplicationController < ActionController::Base
  layout("wrapper.html.erb")

  # Add your actions below this line
  # ================================

  def homepage
    render({ :template => "game_templates/rules.html.erb" })
  end

  def outcome(user_move)
    @comp_move = ["rock", "paper", "scissors"].sample

    if user_move == @comp_move
      @outcome = "tied"
    elsif (user_move == "rock" && @comp_move == "scissors") || (user_move == "paper" && @comp_move == "rock") || (user_move == "scissors" && @comp_move == "paper")
      @outcome = "won"
    elsif (user_move == "rock" && @comp_move == "paper") || (user_move == "paper" && @comp_move == "scissors") || (user_move == "scissors" && @comp_move == "rock")
      @outcome = "lost"
    end
  end

  def play_rock
    self.outcome("rock")
    render({ :template => "game_templates/user_rock.html.erb" })
  end

  def play_paper
    self.outcome("paper")
    render({ :template => "game_templates/user_paper.html.erb" })
  end

  def play_scissors
    self.outcome("scissors")
    render({ :template => "game_templates/user_scissors.html.erb" })
  end
end
