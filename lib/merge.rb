class Merge
  def sort(arr)
    if arr.size <= 1
      return arr
    end

    array_size = arr.size
    half_of_size = (array_size/2).round

    left_array = arr.take(half_of_size)
    right_array = arr.drop(half_of_size)

    sorted_left_array = sort(left_array)
    sorted_right_array = sort(right_array)

    merge(sorted_left_array, sorted_right_array)
  end

  def merge(left_array, right_array)
    if right_array.empty?
      return left_array
    end

    if left_array.empty?
      return right_array
    end

    smallest_item = if left_array.first <= right_array.first
      left_array.shift
    else
      right_array.shift
    end

    recursive = merge(left_array, right_array)

    [smallest_item].concat(recursive)
  end
end