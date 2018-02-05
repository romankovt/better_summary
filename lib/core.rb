module BetterSummary
  class Core
    class << self
      attr_accessor :trackers, :active_record_tracker

      def active_record_tracker
        @active_record_tracker ||= Trackers::ActiveRecord.new
      end

      def initialize
        @active_record_tracker = Trackers::ActiveRecord.new
        @trackera = [@active_record_tracker]
      end
    end
  end
end
