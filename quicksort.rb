class Array
  def quicksort
    return [] if empty?

    pivot = delete_at(rand(size))
    left, right = partition(&pivot.method(:>))

    return *left.quicksort, pivot, *right.quicksort
  end
end

a = [5,6,8,4,2,7,9,3,8,4,1,5,7,9]
p a.quicksort