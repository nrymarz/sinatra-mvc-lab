class PigLatinizer
    def piglatinize(phrase)
        arr = phrase.split.collect do |word|
            piglatinize_word(word)
        end
        arr.join(' ')
    end

    def piglatinize_word(word)
        first_vowel = word.match(/[aeiou]/i).to_s
        first_vowel_index = word.index(first_vowel)
        if first_vowel_index == 0
            word.concat("way")
        else
            constanants = word.slice!(0,first_vowel_index)
            word.concat("#{constanants}ay")
        end
    end

end
