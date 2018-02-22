class Array

  #O(n^2)
  def my_min
    min = 0
    self.each do |el1|
      self.each do |el2|
         min = el1 if el1 <= el2 && el1 < min
      end
    end
    min
  end

  #O(n)
  def my_min_revamped
    min = self.first
    self.each {|el| min = el if el < min}
    min
  end

end


 muh_list = [ 0, 3, 5, 4, -5, 10, 1, 90 ]

p muh_list.my_min
p muh_list.my_min_revamped
