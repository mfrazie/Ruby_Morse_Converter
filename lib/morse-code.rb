class MorseConverter
    def convert(phrase)
        result = ""; i = 0;
        while i < phrase.length
            @denominations.each do |denomination|
                while phrase[i] == denomination[:letter]
                    i+= 1
                    result << denomination[:morse]
                end
            end 
        end
        return result
    end

    def initialize
        @denominations = []
        add_denomination("a" ,".- ");add_denomination("b" , "-... ");add_denomination("c" , "-.-. ");add_denomination("d" , "-.. ");
        add_denomination("e" , ". ");add_denomination("f" , "..-. ");add_denomination("g" , "--. ");add_denomination("h" , ".... ");
        add_denomination("i" , ".. ");add_denomination("j" , ".--- ");add_denomination("k" , "-.- ");add_denomination("l" , ".-.. ");
        add_denomination("m" , "-- ");add_denomination("n" , "-. ");add_denomination("o" , "--- ");add_denomination("p" , ".--. ");
        add_denomination("q" , "--.- ");add_denomination("r" , ".-. ");add_denomination("s" , "... ");add_denomination("t" , "- ");
        add_denomination("u" , "..- ");add_denomination("v" , "...- ");add_denomination("w" , ".-- ");add_denomination("x" , "-..- ");
        add_denomination("y" , "-.-- ");add_denomination("z" , "--.. ");add_denomination("1" , ".----- ");add_denomination("2" , "..--- ");
        add_denomination("3" , "...-- ");add_denomination("4" , "....- ");add_denomination("5" , "..... ");add_denomination("6" , "-.... ");
        add_denomination("7" , "--... ");add_denomination("8" , "---.. ");add_denomination("9" , "----. ");add_denomination("0" , "----- ");
        add_denomination(" ", "  ");
    end 

    def add_denomination(name,value)
        @denominations << {letter: name, morse: value}
    end
end
phrase = ""
convert = MorseConverter.new
puts "Enter a Phrase To Convert:"
#phrase = gets.chomp.downcase
puts convert.convert(phrase)