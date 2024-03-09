def number_to_words(number)
    units = %w(zéro un deux trois quatre cinq six sept huit neuf dix onze douze treize quatorze quinze seize dix-sept dix-huit dix-neuf)
    tens = %w(vingt trente quarante cinquante soixante soixante-dix quatre-vingts quatre-vingt-dix)
    
    if number < 20
      return units[number]
    elsif number < 100
      ten = tens[(number / 10) - 2]
      unit = units[number % 10]
      if unit == "zéro"
        return ten
      end
      return "#{ten}-#{unit}"
    else
      hundreds = units[number / 100]
      remainder = number % 100
      if remainder == 0
        if hundreds == "un"
          return "cent"
        end
        return "#{hundreds} cents"
      else
        return "#{hundreds} cents #{number_to_words(remainder)}"
      end
    end
  end
  
  print "Entrez un nombre : "
  input = gets.chomp.to_i
  result = number_to_words(input)
  puts "L'équivalent en lettres de #{input} est : #{result}"
  