module Exercise
  module Arrays
    class << self
      def replace(array)
        result = []
        maxValue = array[0];
        array.each {|val| maxValue = val if (val > maxValue)}
        array.each {|val| val > 0 ? result << maxValue : result << val}
        result
      end

      def search(_array, _query)
        res = -1; 
        first = 0
        last = _array.size - 1
        interval = last - first
        while interval > 1 && res == -1 do 
          middle = (first + last) / 2
          res = middle if _array[middle] == _query
          _array[middle] < _query ? first = middle : last = middle
          interval = last - first
        end
        res = last if _array[last] == _query
        res = first if _array[first] == _query
        res
      end
    end
  end
end
