def string_permutations(str)
  return [str] if str.length <= 1
  perms = []
  str.chars.each_with_index do |char, char_index|
    single_string = str.slice(0, char_index) + str.slice(char_index + 1, str.length)
    string_permutations(single_string).each do |sub_perm|
      perms << char + sub_perm
    end
  end
  perms
end
