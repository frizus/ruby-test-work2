def task(str, dict)
  check(str, dict)
  #check_unique(str, dict)
end

def check(str, dict)
  dict.each do |word|
    next unless str.start_with? word

    new_str = str[word.length..]
    if new_str.empty?
      return true
    end

    return true if check(new_str, dict)
  end

  false
end

# если слово из словаря может содержаться только один раз
def check_unique(str, dict)
  dict.each_with_index do |word, index|
    next unless str.start_with? word

    new_str = str[word.length..]
    if new_str.empty?
      return true
    end

    new_dict = dict.clone
    new_dict.delete_at(index)
    return false if new_dict.empty?

    return true if check_unique(new_str, new_dict)
  end

  false
end