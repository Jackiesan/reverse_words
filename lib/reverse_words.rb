# A method to reverse each word in a sentence, in place.
def reverse_words(my_words)
  if my_words == nil || my_words.length == 1
    return my_words
  end

  i = 0
  j = 0
  while i < my_words.length
    index = i

    while my_words[index] != " " && my_words[index] != nil
      index += 1
    end

    if index > 0
      j = index - 1
    else
      j = index
    end

    while i < j
      letter = my_words[i]
      my_words[i] = my_words[j]
      my_words[j] = letter

      i += 1
      j -= 1
    end

    i = index + 1

  end
  return my_words
end
