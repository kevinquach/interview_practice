module Enumerable
  def my_sort_by
    map {|i| [yield(i), i]}.sort.map {|j| j[1]}
  end
end
