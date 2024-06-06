def task(number, size)
  printer(number, size)
end

def printer(number, size)
  number.each do |digit|
    print_digit(digit, size)
  end
end

def print_digit(digit, size)
  digits = [
"
 -
| |
 
| |
 -
",
"
  
  |
  
  |
  
",
"
 -
  |
 -
|
 -
",
"
 -
  |
 -
  |
 -
",
"
| |
 -
  |
 
",
"
 -
| 
 -
  |
 -
",
"
 -
| 
 -
| |
 -
",
"
 -
  |

  |
",
"
 -
| |
 -
| |
 -
",
"
 -
| |
 -
  |
 -
"
  ]


  digits[digit].each do |graphic|
    graphic
  end
end