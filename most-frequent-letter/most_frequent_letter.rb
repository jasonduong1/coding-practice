# Given a string, find the most commonly occurring letter.

# Input: “peter piper picked a peck of pickled peppers”
# Output: “p”

def frequent_letter(string)
  letter_counts = {}
  most_frequent_letter = ""
  most_frequent_count = 0
  string.each_char do |c|
    if letter_counts[c]
      letter_counts[c] += 1
    else
      letter_counts[c] = 1
    end
    if letter_counts[c] > most_frequent_count
      most_frequent_letter = c
      most_frequent_count = letter_counts[c]
    end
  end
  most_frequent_letter
end

p frequent_letter("peter piper picked a peck of pickled peppers")
p frequent_letter("hello world")
