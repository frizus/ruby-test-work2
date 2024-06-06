def task(number, size)
  printer(number, size)
end

def printer(number, size)
  renderer = DigitsRenderer.new
  puts renderer.render(number, size)
end

class DigitsRenderer
  DIGITS = [
    [[1, 0, 1], [1, 1, 1, 1]],
    [[0, 0, 0], [0, 1, 0, 1]],
    [[1, 1, 1], [0, 1, 1, 0]],
    [[1, 1, 1], [0, 1, 0, 1]],
    [[0, 1, 0], [1, 1, 0, 1]],
    [[1, 1, 1], [1, 0, 0, 1]],
    [[1, 1, 1], [1, 0, 1, 1]],
    [[1, 0, 0], [0, 1, 0, 1]],
    [[1, 1, 1], [1, 1, 1, 1]],
    [[1, 1, 1], [1, 1, 0, 1]],
  ]

  SPACE = " "

  HORIZONTAL = "-"

  VERTICAL = "|"

  BLANK_SPACE = " "

  def render(number, size = nil)
    rows = Array.new(3 + 2 * size) { "" }
    number.each_char do |digit|
      code = DIGITS[digit.to_i]
      last_row_i = 0
      last_row_i = horizontal(code[0][0], size, rows, last_row_i)
      last_row_i = vertical(code[1][0], code[1][1], size, rows, last_row_i)
      last_row_i = horizontal(code[0][1], size, rows, last_row_i)
      last_row_i = vertical(code[1][2], code[1][3], size, rows, last_row_i)
      horizontal(code[0][2], size, rows, last_row_i)
    end
    puts rows.join("\n")
  end

  private

  def horizontal(code, size, rows, last_row_i)
    char = code == 1 ? HORIZONTAL : SPACE
    rows[last_row_i] += "#{SPACE}#{char * size}#{SPACE}#{BLANK_SPACE}"
    last_row_i + 1
  end

  def vertical(code1, code2, size, rows, last_row_i)
    char1 = code1 == 1 ? VERTICAL : SPACE
    char2 = code2 == 1 ? VERTICAL : SPACE
    size.times do |i|
      rows[last_row_i + i] += "#{char1}#{SPACE * size}#{char2}#{BLANK_SPACE}"
    end
    last_row_i + size
  end
end