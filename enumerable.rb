module Enumerable
  def map
    array = []
    each do |a|
      array << yield(a)
    end
    array
  end
end

# Foo.new.map (Foo must have #each)
# All methods in Enumerable require each()
# Some also require <=> like min(), max(), sort()

