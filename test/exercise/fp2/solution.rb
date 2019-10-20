module Exercise
  module Fp2
    class MyArray < Array
      # Использовать стандартные функции массива для решения задач нельзя.
      # Использовать свои написанные функции для реализации следующих - можно.

      # Написать свою функцию my_each
      def my_each
        for item in self
          yield(item)
        end
        self
      end

      # Написать свою функцию my_map
      def my_map
        result = MyArray.new()
        self.my_each{|val| result << yield(val)}
        result
      end

      # Написать свою функцию my_compact
      def my_compact
        result = MyArray.new()
        self.my_each{|val| result << val unless val.nil?}
        result
      end

      # Написать свою функцию my_reduce
      def my_reduce
      end
    end
  end
end
