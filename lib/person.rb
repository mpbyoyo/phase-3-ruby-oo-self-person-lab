# your code goes here
class Person
  def initialize(name)
    @name = name
    @bank_account = 25
    @happiness = 8
    @hygiene = 8
  end
  attr_reader :name
  attr_accessor :bank_account

  def happiness=(happiness)
    @happiness = happiness.between?(0, 10) ? happiness : happiness < 0 ? 0 : 10
  end
  attr_reader :happiness

  def hygiene=(hygiene)
    @hygiene = hygiene.between?(0, 10) ? hygiene : hygiene < 0 ? 0 : 10
  end
  attr_reader :hygiene

  def happy?
    happiness > 7
  end

  def clean?
    hygiene > 7
  end

  def get_paid(num)
    @bank_account += num
    "all about the benjamins"
  end

  def take_bath
    self.hygiene = @hygiene+4
    "♪ Rub-a-dub just relaxing in the tub ♫"
  end

  def work_out
    self.happiness = @happiness + 2
    self.hygiene = @hygiene - 3
    "♪ another one bites the dust ♫"
  end

  def call_friend(friend)
    friend.happiness = friend.happiness + 3
    self.happiness = @happiness + 3
    "Hi #{friend.name}! It's #{self.name}. How are you?"
  end

  def start_conversation(friend, topic)
    if topic == "politics"
      self.happiness = @happiness - 2
      friend.happiness = friend.happiness - 2
      return "blah blah partisan blah lobbyist"
    elsif topic == "weather"
      self.happiness = @happiness + 1
      friend.happiness = friend.happiness + 1
      return "blah blah sun blah rain"
    end

    "blah blah blah blah blah"
  end
end