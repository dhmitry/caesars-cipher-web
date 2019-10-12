# Implements the Caesar's cipher
class CaesarsCipher
  ALPHABET = ('a'..'z').to_a.join

  def self.encode(msg, key)
    return msg if key <= 0

    shifted_alphabet = ALPHABET[(key % 26)..-1] + ALPHABET[0..(key % 26) - 1]
    msg = msg.tr(ALPHABET, shifted_alphabet)
    msg.tr(ALPHABET.upcase, shifted_alphabet.upcase)
  end

  def self.decode(msg, key)
    return msg if key <= 0

    shifted_alphabet = ALPHABET[(key % 26)..-1] + ALPHABET[0..(key % 26) - 1]
    msg = msg.tr(shifted_alphabet, ALPHABET)
    msg.tr(shifted_alphabet.upcase, ALPHABET.upcase)
  end
end
