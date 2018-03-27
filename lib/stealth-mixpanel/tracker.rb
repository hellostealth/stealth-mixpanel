module Stealth
  class Mixpanel

    attr_reader :tracker

    def initialize
      @tracker = ::Mixpanel::Tracker.new(ENV['MIXPANEL_PROJECT_TOKEN'])
    end

  end
end
