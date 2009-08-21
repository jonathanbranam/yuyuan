#!/usr/bin/ruby

f = File.read("cedict_1_0_ts_utf-8_mdbg.txt")

line_re = /^(\S+)\s+(\S+)\s*\[(.+?)\]\s*\/([^\/]+)\//
def_re = /([^\/]+)\//
all_spaces_re = /^\s*$/

max_found = 0;
line_count = 0;

f.each_line {|l|
  next if l.match(/^#/)
  md = line_re.match(l)
  next if not md
  line_count += 1;
  puts "line: #{l}"
  puts "match: #{md[1]} #{md[2]} #{md[3]} #{md[4]}" if md
  rest = md.post_match
  def_num = 1
  while (rest and rest.length > 0)
    md = def_re.match(rest)
    break if not md or md[1].match(all_spaces_re)
    puts "  def #{def_num} #{md[1]}" if md and not md[1].match(all_spaces_re)
    def_num += 1
    rest = md.post_match
  end
  puts "********** found #{def_num} **********"
  max_found = def_num if def_num > max_found
=begin
  puts "  def 2: #{md[5]}" if md[5] and not md[5].match(all_spaces_re)
  puts "  def 3: #{md[6]}" if md[6] and not md[6].match(all_spaces_re)
  puts "  def 4: #{md[7]}" if md[7] and not md[7].match(all_spaces_re)
  puts "  def 5: #{md[8]}" if md[8] and not md[8].match(all_spaces_re)
  puts "  def 6: #{md[9]}" if md[9] and not md[9].match(all_spaces_re)
  puts "  def 7: #{md[10]}" if md[10] and not md[10].match(all_spaces_re)
  puts "  def 8: #{md[11]}" if md[11] and not md[11].match(all_spaces_re)
  puts "  def 9: #{md[12]}" if md[12] and not md[12].match(all_spaces_re)
  puts "  def 10: #{md[13]}" if md[13] and not md[13].match(all_spaces_re)
  puts "  def 11: #{md[14]}" if md[14] and not md[14].match(all_spaces_re)
  puts "  def 12: #{md[15]}" if md[15] and not md[15].match(all_spaces_re)
=end
  break if line_count > 20
}
puts "********** found max #{max_found} **********"
