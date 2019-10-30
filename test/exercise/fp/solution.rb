module Exercise
  module Fp
    class << self
      # Обратиться к параметрам фильма можно так:
      # film["name"], film["rating_kinopoisk"], film["rating_imdb"],
      # film["genres"], film["year"], film["access_level"], film["country"]
      def rating(_array)
        result = _array.map { |film| film["rating_kinopoisk"].to_f if (!film["country"].nil? && film["country"].split(',').size > 1 && film["rating_kinopoisk"].to_f > 0) }.compact
        result.reduce(:+) / result.size
      end

      def chars_count(_films, _threshold)
        _films.map { |film| film["name"].count("и") if (film["rating_kinopoisk"].to_f > _threshold && film["name"].include?("и") ) }.compact.reduce(:+)
      end
    end
  end
end
