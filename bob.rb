class Bob
  DEFAULT = 'Whatever.'

  def self.has_letters?(str)
    str.match(/[A-Za-z]/)
  end

  def self.ends_question_mark?(str)
    str.strip[-1] == '?'
  end

  def self.uppercase?(str)
    str.upcase == str
  end

  def self.silence?(str)
    str.strip.empty?
  end

  def self.question?(str)
    !has_letters?(str) && ends_question_mark?(str) ||
      !uppercase?(str) && ends_question_mark?(str) 
  end

  def self.yelling_at?(str)
    has_letters?(str) && uppercase?(str) && !ends_question_mark?(str)
  end

  def self.yelling_question?(str)
    has_letters?(str) && uppercase?(str) && ends_question_mark?(str)
  end

  def self.silent_treatment?(str)
    silence? str
  end

  def self.hey(sentence)
    sentence = sentence.gsub(/\\[a-z]/, '')

    case true
    when question?(sentence) then 'Sure.'
    when yelling_at?(sentence) then 'Whoa, chill out!'
    when yelling_question?(sentence) then 'Calm down, I know what I\'m doing!'
    when silent_treatment?(sentence) then 'Fine. Be that way!'
    else DEFAULT
    end
  end
end