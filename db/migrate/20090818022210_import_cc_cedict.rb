class ImportCcCedict < ActiveRecord::Migration
  def self.up

    f = File.read("db/cedict_1_0_ts_utf-8_mdbg.txt")

    line_re = /^(\S+)\s+(\S+)\s*\[(.+?)\]\s*\/([^\/]+)\//
    def_re = /([^\/]+)\//
    all_spaces_re = /^\s+$/

    #max_found = 0;

    f.each_line {|l|
      next if l.match(/^#/)
      md = line_re.match(l)
      next if not md
      #puts "line: #{l}"
      #puts "match: #{md[1]} #{md[2]} #{md[3]} #{md[4]}" if md
      rest = md.post_match
      def_num = 2
      cword = ChineseWord.new
      cword.traditional = md[1]
      cword.simplified = md[2]
      cword.pinyin = md[3]
      cword.save
      edef = EnglishDefinition.new
      edef.chinese = cword
      edef.definition = md[4]
      edef.save
      while (rest and rest.length > 0)
        md = def_re.match(rest)
        break if not md or md[1].match(all_spaces_re)
        #puts "  def #{def_num} #{md[1]}" if md and not md[1].match(all_spaces_re)
        edef = EnglishDefinition.new
        edef.chinese = cword
        edef.definition = md[1]
        edef.save
        def_num += 1
        rest = md.post_match
      end
      #puts "********** found #{def_num} **********"
      #max_found = def_num if def_num > max_found
    }
    #puts "********** found max #{max_found} **********"


  end

  def self.down
    ChineseWord.delete_all
    EnglishDefinition.delete_all
  end
end
