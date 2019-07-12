require 'morse'

describe MorseConverter do
    describe '.convert' do
        it "A is .- " do
            converter = MorseConverter.new
            answer = converter.convert("A")
            expect(answer).to eql(".- ")
        end

        it "B is -... " do
            converter = MorseConverter.new
            answer = converter.convert("B")
            expect(answer).to eql("-... ")
        end

        it "AB is .- -... " do
            converter = MorseConverter.new
            answer = converter.convert("AB")
            expect(answer).to eql(".- -... ")
        end
        it "ABBA .- -... -... .-" do
            converter = MorseConverter.new
            answer = converter.convert("ABBA")
            expect(answer).to eql (".- -... -... .- ")
        end

        it "CABA -.-. .- -... .-" do
            converter = MorseConverter.new
            answer = converter.convert("CABA")
            expect(answer).to eql("-.-. .- -... .- ")
        end
    end
end