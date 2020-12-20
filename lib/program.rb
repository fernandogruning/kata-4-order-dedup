require 'merge.rb'

class Program
  def OrderAndDedup(arr)
    merge = Merge.new

    sortedArr = merge.sort arr

    dedupArr = Array.new
    offsetArr = sortedArr.drop(1) # [1,2,3] => [2,3]

    offsetArr.each_with_index do |item, index|
      prevItem = sortedArr.at(index) # index => 0; sortedArr[index]; [1,2,3] & [2,3]; prevItem => 1

      if index == offsetArr.length - 1
        # [1,2,3,3] => [3,3] => 3
        if prevItem != item
          # [1,2,3] => [2,3] => [2,3]
          dedupArr.push(prevItem)
        end
        dedupArr.push(item)
      elsif prevItem != item
        dedupArr.push(prevItem)
      end
    end

    return dedupArr
  end
end