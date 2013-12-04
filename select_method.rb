class Array
  def selecty
    [].tap {|output| each {|e| output << e if yield(e)}}
  end
end
