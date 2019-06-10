module Results
  module HiraganaPresenter
    module_function

    def result(word, answer)
      {
        word: word.translations.map { |t| t.wordable.name },
        answer: answer
      }
    end
  end
end
