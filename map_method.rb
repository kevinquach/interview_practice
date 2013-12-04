class Array
  def mappy
    output = []

    each {|e| output << yield(e) }

    output
  end
end
