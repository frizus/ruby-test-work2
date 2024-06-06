def task(str, dict)
  checker(str, dict)
end

def checker(str, dict, unique = false)
  dict.each_with_index do |word, index|
    next unless str.start_with? word

    new_str = str[word.length..]
    if new_str.empty?
      return true
    end

    # слово в словаре может содержаться только один раз в строке?
    if unique
      new_dict = dict.clone
      new_dict.delete_at(index)
      return true if checker(new_str, new_dict)
    else
      return true if checker(new_str, dict)
    end
  end

  false
end