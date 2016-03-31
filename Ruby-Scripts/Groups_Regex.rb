str = "aabbbbccdddeffffgg"

groups = []

str.scan(/((.)\2*)/) { |x| groups.push(x[0]) }

print groups