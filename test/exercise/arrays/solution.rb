module Exercise
  module Arrays
    class << self
      def replace(array)
        max_value = array[0];
        array.each {|val| max_value = val if (val > max_value)}
        array.map{|val| val > 0 ? max_value : val}
        #array.each {|val| max_value = val if (val > max_value)}.map{|val| val > 0 ? max_value : val}

      end

      def search(_array, _query, first = 0, last = _array.size - 1)
        interval = last - first
        middle = (last + first) / 2
        return last if _array[last] == _query
        return first if _array[first] == _query
        return middle if _array[middle] == _query
        #return _array[middle] < _query ? self.search(_array, _query, middle, last) : self.search(_array, _query, first, middle) if interval > 1
        if interval > 1
          return _array[middle] < _query ? self.search(_array, _query, middle, last) : self.search(_array, _query, first, middle) 
        end
        return -1
      end
    end
  end
end


