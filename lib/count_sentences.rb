require 'pry'

class String

  def sentence?
    if self[-1] == "."
      return true
    end
    return false
  end

  def question?
    if self[-1] == "?"
      return true
    end
    return false
  end

  def exclamation?
    if self[-1] == "!"
      return true
    end
    return false
  end

  def count_sentences
    self.split(/[!.?]/).delete_if {|w| w.size < 2}.size
  end
end
