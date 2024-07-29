def caesar_cipher(text, shift)
  shift_char = lambda do |char|
    if char.match(/[a-z]/)
      base = 'a'.ord
      ((char.ord - base + shift) % 26 + base).chr
    elsif char.match(/[A-Z]/)
      base = 'A'.ord
      ((char.ord - base + shift) % 26 + base).chr
    else
      char
    end
  end
  text.chars.map(&shift_char).join
end
