def task(str, dict)
  checker(str, dict)
end

def checker(str, dict)
  dict.each do |word|
    next unless str.start_with? word

    new_str = str[word.length..]
    if new_str.empty?
      return true
    end

    return true if checker(new_str, dict)
  end

  false
end

# если слово в словаре может содержаться только один раз
def check_unique(str, dict)
  dict.each_with_index do |word, index|
    next unless str.start_with? word

    new_str = str[word.length..]
    if new_str.empty?
      return true
    end

    new_dict = dict.clone
    new_dict.delete_at(index)
    return true if checker(new_str, new_dict)
  end

  false
end