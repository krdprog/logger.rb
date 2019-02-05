require 'singleton'

class Loggeer

  include Singleton

  def initialize
    @f = File.open 'log.txt', 'a'
  end

  def log bar
    @f.puts bar
    @f.flush
  end

end
