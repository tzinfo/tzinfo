require 'tzinfo/tzdataparser'

include TZInfo

# run with ruby -Itzinfo/lib test.rb

p = TZDataParser.new('data', 'tzinfo/lib/tzinfo')
p.execute