
class Translate
  LIB =
  {  ".-"  => "A",
    "-..." => "B",
    "-.-." => "C",
    "-.."  => "D",
    "."    => "E",
    "..-." => "F",
    "--."  => "G",
    "...." => "H",
    ".."   => "I",
    ".---" => "J",
    "-.-"  => "K",
    ".-.." => "L",
    "--"   => "M",
    "-."   => "N",
    "---"  => "O",
    ".--." => "P",
    "--.-" => "Q",
    ".-."  => "R",
    "..."  => "S",
    "-"    => "T",
    "..-"  => "U",
    "...-" => "V",
    ".--"  => "W",
    "-..-" => "X",
    "-.--" => "Y",
    "--.." => "Z",
    " "    => " ",
    "...--" => "3"
    }

    def eng_to_morse(string)
      letters = string.split("")
      characters = letters.map { |k| LIB.key k.upcase }
      characters.join
    end

    def from_file(filename)
      File.open("input.txt").each do |line|
        puts line
      end
    end

end
