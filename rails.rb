# ASSESSMENT 5: INTRO TO RAILS
# Coding practical questions

# 1. Create a method called hello_world that takes a language code (e.g. "es", "de", "ru", "ja") as an argument and returns the appropriate version of "Hello, World" for the given language. The default should be English. Test your code with THREE method calls. Expected output for hello_world 'es': 'Hola Mundo', hello_world 'de': 'Hallo Welt'

# def hello_world (lang)
#     if lang == 'es'
#         puts "Hola Mundo"
#     elsif lang == 'de'
#         puts "Hallo Welt"
#     elsif lang == 'ru'
#         puts 'Privet, mir'
#     elsif lang == 'ja'
#         puts 'Kon nichiwa sekai'
#     else
#         puts 'Hello World'
#   end
# end

# hello_world ('es')
# hello_world ('de')
# hello_world ('ru')


# 2a. Create a method called assign_grade that takes a number as an argument and returns the corresponding letter grade. Test your code with THREE method calls. Expected output for assign_grade 96: 'A', assign_grade 75: 'C'
#Ruby case Statement
# $assign_grade = 96
# $assign_grade = 75
# $assign_grade = 55
#     case $assign_grade
#     when 90 .. 100
#         puts "A"
#     when 80 .. 89
#         puts "B"
#     when 70 .. 79
#         puts "C"
#     when 60 .. 69
#         puts "D"
#     when 0 .. 59
#         puts "F"
#     else
#         puts "try again"
# end

# 2b. STRETCH: Create exceptions to your method if the number passed is less than 0 or greater than 100. Copy and paste the original code below to add the exceptions.



# 3a. Create a method called pluralizer that takes 2 arguments - a singular noun and a number - and returns the number and the pluralized form of the noun, if necessary. Test your code with THREE method calls. Expected output of pluralizer(5, cat): '5 cats', expected output of pluralizer(1, dog): '1 dog'
# def pluralizer (noun, number)
#   if number === 1
#     puts number.to_s + " " + noun
#   else
#     puts number.to_s + " " + noun + "s"
#   end
# end

#  pluralizer("cat",5)
#  pluralizer("dog",1)
 pluralizer("cow",-3)

# 3b. STRETCH: Pick three nouns with irregular pluarlization like sheep, goose/geese, child/children, person/people, crossroads, pants and add the exceptions to your code. Copy and paste the original code below to add the exceptions.
