Использовалась `Ruby 3.2.2`

# Использование
```bash
#ruby index.rb count to # , где count - количество случайных чисел, а to - верхняя граница диапазона допустимых случайных чисел (исключающая) 
# например
ruby index.rb 1 10
ruby index.rb 1000 5000
```

# Примечание
Работая, не встречал запроса на очень большое количество уникальных случайных чисел, которым "тесно" в диапазоне
Для них можно изменить алгоритм на:
```ruby
def generate(count, to)
  (0..to - 1).to_a.sample(count).sort!
end
```