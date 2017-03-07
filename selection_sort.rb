require 'benchmark'
def selection_sort(numbers:) # skapar en funktion med en lista
  index = 1 # index håller koll så man har kollat alla siffror
  rätt_lista=[] # skpapar en lista som vi ska sortera
  place = 0 # kollar vilken plats vi är i listan

  while numbers.length > 0 # loppar till listan blir tom
    minnumb = numbers[0] # första numbret i listan blir minsta tal
    while index < numbers.length # loppar till index blir större än numbren lenght
      if numbers[index] <= minnumb # kollar vilken som är större eller lika stor
        minnumb = numbers[index] # byer plats om min numb är större
        place = index # platsen ökar där index var

      end
      index += 1 # blir andra talet i listan
    end
    rätt_lista.push(minnumb)# säter min numb i rätt lista
    numbers.delete_at(place) # tar bort så min numb inte är kvar
    index = 0 # sätter den på noll så vi kan loppa igen
  end
  return rätt_lista # retunerar den sorterade listan
end
numbers = []
10000.times do |_|
  numbers << rand(1..100000)
end

Benchmark.bm(20) do |x|
	x.report('Oskars algoritm') { selection_sort(numbers: numbers)}
end
#print selection_sort(numbers:[5,6,4,23,5,643,3,])
