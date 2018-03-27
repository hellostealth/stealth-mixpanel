module Stealth
  module MixpanelSessionTracking
    def set(flow:, state:)
      retval = super

      if ENV['MIXPANEL_PROJECT_TOKEN'].present?
        mixpanel = Stealth::Mixpanel.new
        mixpanel.tracker.track(user_id, 'State Change', {
          'flow' => flow,
          'state' => state
        })
        Stealth::Logger.l(topic: "mixpanel", message: "tracked.")
      end

      retval
    end
  end

  class Session
    prepend Stealth::MixpanelSessionTracking
  end

end
