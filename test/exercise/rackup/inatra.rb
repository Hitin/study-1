module Inatra
  class << self
    def routes(&block)
      instance_eval(&block)
    end

    def call(env)   	
      @request.call(env)
    end

    def get(val, &block)
      @request = block
    end

  end
end
