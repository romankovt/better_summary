require 'core'

ActiveRecord::Base.class_eval do
  after_initialize :_test_me

  def _test_me
    BetterSummary::Core.active_record_tracker.increment!
    puts "test me >>>>>>>>>>>>>>>?!?!?"
    BetterSummary::Core.active_record_tracker.report
  end
end
