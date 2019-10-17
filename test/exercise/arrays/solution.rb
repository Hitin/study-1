module Exercise
  module Arrays
    class << self
      def replace(array)
        maxValue = array.max
        res = []
        array.each {|val| val > 0 ? res << maxValue : res << val}
        res
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
