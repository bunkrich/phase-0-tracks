# Replace in the "<???>" with the appropriate method (and arguments, if any).
# Uncomment the calls to catch these methods red-handed.

# When there's more than one suspect who could have
# committed the crime, add additional calls to prove it.

"iNvEsTiGaTiOn".swapcase
# => “InVeStIgAtIoN”

"zom".gsub(/[o]/, 'oo')
"zom".insert(2, 'o') 
"zom".sub(/[o]/, 'oo') 
# => “zoom”
# Below: the method I created for this;
def more_o(input_word)
	puts input_word.gsub(/[o]/, 'oo')
end

"enhance".center(15)
# => "    enhance    "
# Below: the method I created for this;
def fifteen_space_center(input_word)
	puts input_word.center(15)
end

"Stop! You’re under arrest!".upcase
# => "STOP! YOU’RE UNDER ARREST!"
# Below: the method I created for this;
def upper_case_all(input_word)
	puts input_word.upcase
end

"the usual".ljust(18, " suspects")
# => "the usual suspects"

"suspects".rjust(18, "the usual ")
# => "the usual suspects"

"The case of the disappearing last letter".chop
# => "The case of the disappearing last lette"

"The mystery of the missing first letter".delete "T"
"The mystery of the missing first letter".gsub(/[T]/, '')
# => "he mystery of the missing first letter"

"Elementary,    my   dear        Watson!".split.join(" ")
"Elementary,    my   dear        Watson!".squeeze
"Elementary,    my   dear        Watson!".squeeze(" ")
"Elementary,    my   dear        Watson!".gsub(/\s+/, ' ')
# => "Elementary, my dear Watson!"

"z".ord
# => 122 
# (What is the significance of the number 122 in relation to the character z?)
# It's the ASCII code for the letter 'Z'

"How many times does the letter 'a' appear in this string?".count "a"
# => 4

# Testing out some of the methods I created.
fifteen_space_center("enhance")
fifteen_space_center("brent")
fifteen_space_center("hello world")
upper_case_all("enhance")
upper_case_all("brent")
upper_case_all("hello world")
more_o("hello world")
more_o("okoboji, iowa")
more_o("cookbook operations")