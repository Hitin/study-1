module Inatra
  class << self
    def routes(&block)
      @storage = {}
      instance_eval(&block)
    end

    def call(env)   	
      puts env
      req = Rack::Request.new(env)
      path_info = req.path_info
      req_method = req.request_method.downcase.to_sym
      puts path_info
      puts req.request_method.downcase.to_sym
      puts @storage
      puts '++++++++++++++++++++++++++++++++++++++++++++++'
      return [404,{},['No']] unless @storage[req_method].key?(path_info)
      @storage[req_method][path_info].call(env)

    end

    def get(path, &block)
      meth = :get
      @storage[meth] = {}
      @storage[meth][path] = block 
    end

    def post(path, &block)
      meth = :post
      @storage[meth] = {}
      @storage[meth][path] = block 
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
