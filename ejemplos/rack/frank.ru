
# Adaptado de http://cyx.is/understanding-rack.html

class Frank
  def self.get(path, &block)
    handlers["GET"] << [matcher(path), block]
  end

  def self.post(path, &block)
    handlers["POST"] << [matcher(path), block]
  end

  def self.put(path, &block)
    handlers["PUT"] << [matcher(path), block]
  end

  def self.delete(path, &block)
    handlers["DELETE"] << [matcher(path), block]
  end

  def self.matcher(path)
    # handle the case where the path has a variable e.g. /post/:id
    re = path.gsub(/\:[^\/]+/, "([^\/]+)")

    %r{\A#{trim_trailing_slash(re)}\z}
  end

  def self.trim_trailing_slash(str)
    str.gsub(/\/$/, "")
  end

  def self.handlers
    @handlers ||= Hash.new { |h, k| h[k] = [] }
  end

  def self.request
    Thread.current[:request]
  end

  def self.call(env)
    res = Rack::Response.new

    handlers[env["REQUEST_METHOD"]].each do |matcher, block|
      if match = trim_trailing_slash(env["PATH_INFO"]).match(matcher)
        Thread.current[:request] = Rack::Request.new(env)

        break res.write(block.call(*match.captures))
      end
    end

    res.status = 404 if res.empty?
    res.finish
  end
end

class Hello < Frank
  get "/" do
    "Hello World"
  end

  get "/datetime" do
    Time.now.rfc2822
  end

  get "/hello/:name" do |name|
    "Hello #{name}"
  end

  post "/hello/:name" do |name|
    "#{name} added."
  end

  put "/hello/:src/:dst" do |src, dst|
    "#{src} renamed to #{dst}."
  end

  delete "/hello/:name" do |name|
    "#{name} removed."
  end
end

run Hello