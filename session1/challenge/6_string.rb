# You'll get a string and a boolean.
# When the boolean is true, return a new string containing all the odd characters.
# When the boolean is false, return a new string containing all the even characters.
# 
# If you have no idea where to begin, remember to check out the cheatsheets for string and logic/control
# 
# odds_and_evens("abcdefg",true)    # => "bdf"
# odds_and_evens("abcdefg",false)   # => "aceg"

def odds_and_evens(string, return_odds)
  out = ""
  string.length.times do |i|
    is_even = i % 2 == 0
    # alternative is_even = i.even?
    out << string[i] if (is_even && !return_odds) || (!is_even && return_odds)
  end
  out
end
