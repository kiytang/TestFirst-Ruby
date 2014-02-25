# module PigLatinTranslator
  
  def translate(s)
    words = s.split
      s = words.map do |s|  
        if /^[aeiou]/.match(s)
           s + "ay"
        
        elsif /^qu/.match(s[0..1])
            s[2..-1] + s[0..1] + "ay"
        
        elsif /[aeiou]/.match(s[1])
            s[1..-1] + s[0] + "ay"
        
        elsif /([a-z]*qu)([a-z]*)/.match(s)
         (/([a-z]*qu)([a-z]*)/.match(s).captures.reverse + ["ay"]).join("")
       
          # if begins with not a vowel (captures all consonanats), then place into a 
          # array[consonants, all letters after consonat] then reverse this array 
          # and add "ay" to 
          # the end of the resulting arrray(.join converts string to array)
          # Note the reason why I had to change the ordering of this and the above elsif statement
          # on line 15 is because the below would of retured true capturing 'qu' as a aconsonant, thus
          # it will not proceed to the next line (order of precedence)

          else /^([^aeiou]*)([a-z]*)/.match(s)
          (/^([^aeiou]*)([a-z]*)/.match(s).captures.reverse + ["ay"]).join("")
        end
      end 
      s = s.join(" ")
  end 