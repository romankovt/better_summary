module Trackers
  class ActiveRecord
    attr_accessor :counter

    def initialize
      @counter = 0
    end

    def increment!(by = 1)
      @counter += 1
    end

    def reset!
      @counter = 0
    end

    def report
      puts @counter
    end
  end
end
