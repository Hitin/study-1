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
      #  res = _array.index(_query)
      #  res.nil? ? -1 : res
        res = -1; 
        _array.each_with_index {|val, ind| res = ind if (val == _query)}
        res
      end
    end
  end
end
