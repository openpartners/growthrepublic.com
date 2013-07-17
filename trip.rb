#!/usr/bin/env ruby

aa = []
bb = []
cc = []
min = []

print "
Uwaga !!!\n\n
to tylko przykład:\n
a1 =    [5]\n
a2 =   [7, 8]\n
a3 =  [2, 4, 8]\n
a4 = [7, 5, 4, 9]\n"

# a1 = [1, 3, 0, 4]
# a2 = [2, 4, 4, 1]
# a3 = [4, 5, 8, 5]
# a4 = [7, 6, 1, 9]
a1 =    [5]
a2 =   [7, 8]
a3 =  [2, 4, 8]
a4 = [7, 5, 4, 9]

#  puts "Wprowadź liczby do tablicy \"a1\" jeśli wciśniesz literę \"k\" skończy się wprowadzenie liczb do \"a1\""
#  a1 = []
#  while xx = gets.chop
#    break if xx == "k" 
#    a1 << xx.to_i
#  end
# #*******************************************
#  puts "Wprowadź liczby do tablicy \"a2\" jeśli wciśniesz literę \"k\" skończy się wprowadzenie liczb do \"a2\""
#  a2 = []
#  while xx = gets.chop
#    break if xx == "k" 
#    a2 << xx.to_i
#  end
# #*******************************************
#  puts "Wprowadź liczby do tablicy \"a3\" jeśli wciśniesz literę \"k\" skończy się wprowadzenie liczb do \"a3\""
#  a3 = []
#  while xx = gets.chop
#    break if xx == "k" 
#    a3 << xx.to_i
#  end
# #*******************************************
#  puts "Wprowadź liczby do tablicy \"a4\" jeśli wciśniesz literę \"k\" skończy się wprowadzenie liczb do \"a4\""
#  a4 = []
#  while xx = gets.chop
#    break if xx == "k" 
#    a4 << xx.to_i
#  end
# #*******************************************

puts " \n Wprowadziłeś właśnie liczby do \"a1\", \"a2\", \"a3\", \"a4\" :"

puts "a1 = " + a1.join(" ")
puts "a2 =  " +  a2.join(" ")
puts "a3 = " +  a3.join(" ")
puts "a4 =  " +  a4.join(" ")

puts " \n Wprowadź teraz numer z \"a1\" od którego chcesz najmniej kosztowną drogą znaleźć się na \"a4\""

 while x = gets.chop
   if (a1.index{|e| e == x.to_i}) == nil 
       puts "pomyłka nie ma takiej liczby w \"a1\" spróbuj jeszcze raz"
   else 
	   puts "ok, pierwsza napotkana liczba " + x.to_s + " w \"a1\" jest na pozycji " + (a1.index{|e| e == x.to_i}+1).to_s
	   break
   end
 end



min << x.to_i
aa << a2.at(a1.index{|e| e == x.to_i}).to_i
aa << a2.at(a1.index{|e| e == x.to_i}-1).to_i
min << aa.sort[0...1]
bb << a3.at(a1.index{|e| e == x.to_i}).to_i
bb << a3.at(a1.index{|e| e == x.to_i}+1).to_i
min << bb.sort[0...1]
cc << a4.at(a1.index{|e| e == x.to_i}).to_i
cc << a4.at(a1.index{|e| e == x.to_i}-1).to_i
min << cc.sort[0...1]


puts "minimalna droga to: " + min.join(" ")

#p min.inject(:+)
