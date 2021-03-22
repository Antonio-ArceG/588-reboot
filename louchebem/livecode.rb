# LOUCHEBEMIZE - LIVECODE

# CONSTRAINTS!!!
# 1. ONE LETTER WORDS SHOULD NOT BE TRANSLATED
# 2. WORDS BEGINNING WITH VOWEL - 'L + WORD + SUFFIX'
# 3. WORDS BEGINNING WITH CONSONANT - 'L + WORD AFTER FIRST VOWEL + CONSONANTS BEFORE FIRST VOWEL + SUFFIX'
# 4. RANDOM SUFFIX MUST BE ["em", "é", "ji", "oc", "ic", "uche", "ès"]
# 5. ENHANCEMENT = SHOULD NOT TRANSLATE PUNCTUATION
# 6. SEPARATE METHODS

# PSEUDOCODE
# START WITH ASSUMING INPUT IS A SINGLE WORD
# - SELECT A RANDOM SUFFIX FROM GIVEN ARRAY
# - DETERMINE IF IT STARTS WITH CONSONANT OR VOWEL
#   - EXTRACT THIS ONTO A SEPARATE METHOD
# - IF STARTS WITH A VOWEL
#   - PUT 'L' IN FRONT OF THE WORD AND ADD A RANDOM SUFFIX AT THE END
# - ELSE
#   - DETERMINE FIRST CONSONANT GROUP (FIND INDEX)
#   - PUT FIRST CONSONANT GROUP AT THE END OF THE WORD (NEW_WORD).
#   - PUT 'L' IN FRONT OF NEW_WORD AND ADD RANDOM SUFFIX TO NEW_WORD

# ASSUMING INPUT IS A SENTENCE

# - split the sentence into an array of words
# - iterate over array / foreach word
# - if word only has one lettert OR is special character
#   - push into result array
# - else
#   - call 'louche' method on the word
#   - push transformed word into result array
# - return result array (JOIN)


def vowel?(letter)
  %w[a e i o u].include?(letter)
end

def louche(word)
  random_suffix = ["em", "é", "ji", "oc", "ic", "uche", "ès"].sample
  if vowel?(word[0])
    return "l#{word}#{random_suffix}"
  else
    # find index until vowel
    vowel_index = word.chars.index { |letter| vowel?(letter) }
    consonant_group = word[0...vowel_index]
    word_group = word[vowel_index..-1]
    "l#{word_group}#{consonant_group}#{random_suffix}"
  end
end

def louchebemize(sentence)
  new_sentence = []
  words = sentence.split(/\b/) # \b regex for word boundary
  words.each do |word|
    if word.size == 1 || word =~ /\W/ # \W regex for non-word character
      new_sentence << word.downcase
    else
      new_sentence << louche(word).downcase
    end
  end
  new_sentence.join
end

puts louchebemize('Reboot!!! best way to spend A Saturday!!!')


# Uncomment below for examples of how \b works

# puts '\b matches word boundaries'
# p /\bcat\b/.match('cat')
# p /\bcat\b/.match('cat2')
# p /\bcat\b/.match('cat!')
# p /\bcat\b/.match('cat_')
# p /\bcat\b/.match('catastrophe')
# p /\bcat\b/.match('cat ')

# Uncomment below for examples of how \W works

# puts '\W matches non word characters'
# p /\W/.match('user@email')
# p /\W/.match('useremail')
# p /\Wem/.match('user@email')
# p /\Wem/.match('user@erail')

