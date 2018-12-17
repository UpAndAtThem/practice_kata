class HighScores
  attr_reader :score_history

  def initialize(scores_arr)
    @score_history = scores_arr
  end

  def scores
    score_history
  end

  def latest
    score_history.last
  end

  def personal_best
    score_history.sort.last
  end

  def personal_top
    score_history.sort { |x,y| y <=> x }.first(3)
  end

  def report
    unless personal_best == latest
      "Your latest score was #{latest}. That's #{personal_best - latest} short of your personal best!"
    else
      "Your latest score was #{latest}. That's your personal best!"
    end
  end
end
