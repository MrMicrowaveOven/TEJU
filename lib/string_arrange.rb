def string_permutations(str)
  return [str] if str.length <= 1
  perms = []
  str.chars.each_with_index do |char, char_index|
    single_string = str.slice(0, char_index) + str.slice(char_index + 1, str.length)

    old_length = perms.length
    perms += string_permutations(single_string)
    new_length = perms.length

    perms[old_length .. new_length] = perms[old_length .. new_length].map do |string_without_char|
      char + string_without_char
    end
  end
  perms
end


# eli@ujet.co
