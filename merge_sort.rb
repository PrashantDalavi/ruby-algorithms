def merge_sort(list)
  if list.length <= 1
    list
  else 
    mid = (list.length / 2).floor
    left = merge_sort(list[0..mid-1])
    right = merge_sort(list[mid..list.length])
    merge(left, right)
  end
end

def merge(left, right)
  if left.empty?
    right
  elsif right.empty?
    left
  elsif left.first < right.first
    [left.first] + merge(left[1..left.length], right)
  else 
    [right.first] + merge(left, right[1..right.length])
  end
end

arr = [5,8,6,7,1,2,8,9,4,5,56,96,42,10]

p merge_sort(arr)
#=> [1, 2, 3, 4, 4, 5, 5, 6, 7, 7, 8, 8, 9, 9]