class MorseConverter
    def convert phrase
        morse_version = ""; i=0
        while i < phrase.length
            @conversions.each do |key, value|
                if phrase[i] == key
                    morse_version << value
                    i+=1
                end  
            end
        end
        return morse_version
    end

    def initialize
        @conversions =
        {
            "A" => ".- ",
            "B" => "-... ",
            "C" => "-.-. "
        }
    end
end