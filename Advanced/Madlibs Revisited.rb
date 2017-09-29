# Madlibs Revisited 		seuss file must be in the root directory for this to function at all
sus = File.read(Dir.pwd+"/seuss").split(",")

seuss = Hash[*sus]
sus = seuss.map{ |k, v| [k.to_sym, v] }.flatten
seuss = Hash[*sus]

def say_seuss(seuss)  
  list = seuss[:cnst1],seuss[:noun_1].capitalize,seuss[:cnst2],seuss[:noun_1].capitalize,seuss[:adj_1].capitalize,seuss[:noun_1].capitalize,seuss[:adj_2].capitalize,seuss[:noun_1].capitalize,"\n",seuss[:cnst3],"\n",seuss[:cnst4],seuss[:noun_1],"\n",seuss[:cnst5],seuss[:noun_1],"\n",seuss[:adj_1].capitalize,seuss[:noun_1],"\n",seuss[:adj_2].capitalize,seuss[:noun_1],"\n",seuss[:adj_3].capitalize,seuss[:noun_1],"\n",seuss[:adj_2].capitalize,seuss[:noun_1],"\n",seuss[:adj_4].capitalize,seuss[:noun_1],"\n",seuss[:adj_5].capitalize,seuss[:noun_1],"\n",seuss[:cnst6],seuss[:verb_1]+"s",seuss[:cnst7],seuss[:adj_6],seuss[:noun_2],"\n",seuss[:cnst6],seuss[:verb_1]+"s",seuss[:cnst7],seuss[:adj_6],seuss[:noun_3],"\n",seuss[:exc_1].capitalize,seuss[:cnst8],seuss[:cnst9],seuss[:noun_1]+"s",seuss[:cnst10],"\n",seuss[:exc_2].capitalize,seuss[:cnst11],seuss[:adj_1].downcase,seuss[:cnst12].downcase,seuss[:adj_2].downcase,"\n",seuss[:cnst11],seuss[:adj_4],seuss[:cnst12].downcase,seuss[:adj_5].downcase,"\n",seuss[:cnst11],seuss[:adj_7],"\n",seuss[:cnst12],seuss[:adj_8],"\n",seuss[:cnst13],seuss[:adj_9],"\n",seuss[:cnst14],seuss[:adj_7],seuss[:cnst15],seuss[:adj_8],seuss[:cnst15],seuss[:adj_9],seuss[:cnst16],"\n",seuss[:cnst17],"\n",seuss[:cnst18],seuss[:noun_4],"\n",seuss[:cnst11],seuss[:adj_10],"\n",seuss[:cnst12],seuss[:adj_11],"\n",seuss[:cnst19],seuss[:adj_11],seuss[:cnst20],"\n",seuss[:cnst21],seuss[:adj_12],seuss[:noun_5],"\n",seuss[:cnst22],"\n",seuss[:adv].capitalize,seuss[:cnst23],"\n",seuss[:cnst24]
  print list.join(" ")
  puts
  puts
end

def random(seuss)
  nouns = ["benefit","bin","category","clarinet","fairy","hunger","injury","kielbasa","rethinking","tattler","assistant","ostrich","pop","tangerine","tuna"] # 15
  adjs = ["mammoth","giant","spotty","boundless","thoughtful","barbarous","languid","chunky","dizzy","unsightly","sore","fallacious","rough","excited","measly","expensive","sticky","satisfying","highfalutin","cold","internal","boorish","perfect","idiotic"] # 24
  verbs = ["ask","sigh","intend","fence","peck","tap","save","peep","lick","step","beam","regret","shock","fill","place","wave","whirl","radiate","repair","fail"] # 20
  advs = ["sweetly","unbearably","sedately","scarcely","roughly","yearly","absentmindedly","anyway","frankly","properly","justly","loftily"] # 12
  ints = ["oh","wow","whew","aha","ahh","hurray","yippee","whoa","well","eek","gosh","golly","gee","gadzooks","bingo","bam","bravo","hey","yo","rats","dang"] # 21

  seuss[:noun_1] = nouns[rand(15)]
  seuss[:noun_2] = nouns[rand(15)]
  seuss[:noun_3] = nouns[rand(15)]
  seuss[:noun_4] = nouns[rand(15)]
  seuss[:noun_5] = nouns[rand(15)]
  seuss[:adj_1] = adjs[rand(24)]
  seuss[:adj_2] = adjs[rand(24)]
  seuss[:adj_3] = adjs[rand(24)]
  seuss[:adj_4] = adjs[rand(24)]
  seuss[:adj_5] = adjs[rand(24)]
  seuss[:adj_6] = adjs[rand(24)]
  seuss[:adj_7] = adjs[rand(24)]
  seuss[:adj_8] = adjs[rand(24)]
  seuss[:adj_9] = adjs[rand(24)]
  seuss[:adj_10] = adjs[rand(24)]
  seuss[:adj_11] = adjs[rand(24)]
  seuss[:adj_12] = adjs[rand(24)]
  seuss[:verb_1] = verbs[rand(20)]
  seuss[:adv] = advs[rand(12)]
  seuss[:exc_1] = ints[rand(21)]+"!"
  seuss[:exc_2] = ints[rand(21)]+"!"
  puts
  say_seuss(seuss)
end

def get_seuss(seuss)
  puts "My hopes for us both are as high as the sky"
  puts "We'll be writing some poetry you and I"
  puts "Please enter a noun that will serve as the subject of our lyric."
  print "Noun :"
    seuss[:noun_1] = gets.chomp
  puts "We will need several adjectives for rhymes. Pick an easy rhyme."
  print "Adjective :"
    seuss[:adj_2] = gets.chomp
  puts "Ok now an adjective to compliment or contrast #{seuss[:adj_2]} please."
  print "Adjective :"
    seuss[:adj_1] = gets.chomp
  puts "An alternative adjective?"
  print "Adjective :"
    seuss[:adj_3] = gets.chomp
  puts "A different adjective."
  print "Adjective :"
    seuss[:adj_4] = gets.chomp
  puts "Now we want an adjective that rhymes with #{seuss[:adj_2]}."
  puts "If possible it should be related to #{seuss[:adj_4]}."
  print "Adjective :"
    seuss[:adj_5] = gets.chomp
  puts "Whew, poetry is hard! We need a verb, please."
  print "Verb :"
    seuss[:verb_1] = gets.chomp
  puts "Ok now something that you can #{seuss[:verb_1]} or that would get #{seuss[:verb_1]}(ed)."
  print "Noun :"
    seuss[:noun_2] = gets.chomp
  puts "And an adjective to describe #{seuss[:noun_2]}."
  print "Adjective :"
    seuss[:adj_6] = gets.chomp
  puts "How about another noun rhyming with #{seuss[:noun_2]} that could be described as #{seuss[:adj_6]}?"
  print "Noun :"
    seuss[:noun_3] = gets.chomp
  puts "An exclamation!"
  print "Exclamation :"
    seuss[:exc_1] = gets.chomp+"!"
  puts "Another exclamation!? (Or the same)"
  print "Exclamation :"
    seuss[:exc_2] = gets.chomp+"!"
  puts "Back to the adjectives. Try to pick one you can rhyme 3 times."
  print "Adjective :"
    seuss[:adj_8] = gets.chomp
  puts "Another adjective to rhyme with #{seuss[:adj_8]}"
  print "Adjective :"
    seuss[:adj_9] = gets.chomp
  puts "One more adjective rhyming with #{seuss[:adj_9]} and #{seuss[:adj_8]} if you can."
  print "Adjective :"
    seuss[:adj_7] = gets.chomp
  puts "Can you think of a noun that rhymes with #{seuss[:adj_8]}?"
  print "Noun :"
    seuss[:noun_4] = gets.chomp
  puts "Poetry, by nature, is very descriptive. Another adjective please?"
  print "Adjective :"
    seuss[:adj_10] = gets.chomp
  puts "Last adjective to compliment or contrast #{seuss[:adj_10]}?"
  print "Adjective :"
    seuss[:adj_11] = gets.chomp
  puts "We're almost done. A noun that rhymes with #{seuss[:adj_11]}?"
  print "Noun :"
    seuss[:noun_5] = gets.chomp
  puts "And a adjective to describe #{seuss[:noun_5]}?"
  print "Adjective :"
    seuss[:adj_12] = gets.chomp
  puts "For the last one I'll ask for an adverb, please."
  print "Adverb :"
    seuss[:adv] = gets.chomp
  puts
  say_seuss(seuss)
end
valid = false
while !valid
  puts "HEAR a poem, WRITE a poem, RANDOMIZE a poem, or QUIT?"
  sed = gets.chomp[0].downcase
  case sed
    when "h"
      say_seuss(seuss)
    when "w"
      get_seuss(seuss)
    when "r"
      random(seuss)
    when "q"
      valid = true	
  end
end
