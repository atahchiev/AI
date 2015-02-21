
file = File.open("../../tests/example_code.txt", "rb")
contents = file.read
def parse_code_elem(contents)
    split_before_and_after_symbol = ["+", "-", "*", ":", "/", ")", "("]
    split_before = ["$"]
    split_before_and_after_symbol.each { |x| contents.gsub!( "#{x}", " #{x} " ) }
    split_before.each { |x| contents.gsub!( "#{x}", " #{x}" ) }
    contents.split(" ")
end
p parse_code_elem(contents)
# contents_split = contents.split("+")