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
        0
      end
    end
  end
end
