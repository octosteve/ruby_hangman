class WordList
  class SystemWordList
    def self.call
      File.readlines(SYSTEM_WORDS_PATH)
    end
  end

  SYSTEM_WORDS_PATH = "/usr/share/dict/words"
  def self.get_word
    new.get_word
  end

  def initialize(dict=SystemWordList)
    @word_list = dict.call.reject {_1.length < 5}
  end

  def get_word
    word_list.sample
  end

  private
  attr_reader :word_list
end
