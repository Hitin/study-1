module Inatra
  class << self
    def routes(&block)
      instance_eval(&block)
    end

    def call(env)   	
      req = Rack::Request.new(env)
      path_info = req.path_info
      return [404,{},['No']] unless @path == path_info
      @request.call(env)
    end

    def get(path, &block)
      @path = path
      @request = block
    end

    def post(path, &block)
      @path = path
      @request = block
    end

    def delete(path, &block)
      @path = path
      @request = block
    end

    def put(path, &block)
      @path = path
      @request = block
    end

  end
end
