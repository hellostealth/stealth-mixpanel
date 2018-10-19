# Stealth Mixpanel

This gem provides out-of-the-box tracking of state transitions inside of [Stealth](https://github.com/hellostealth/stealth) via the [Mixpanel](https://mixpanel.com) service. You are free to track additional events as needed, and we may add more baseline events in the future.

[![Gem Version](https://badge.fury.io/rb/stealth-mixpanel.svg)](https://badge.fury.io/rb/stealth-mixpanel)

## Setup

Once you have your Mixpanel Project Token, set the `MIXPANEL_PROJECT_TOKEN` environment variable. That's the only setup required!

## Events Tracked

Here are the events that are tracked automatically:

* `State Change`: these are sent to Mixpanel each time a state transition takes place. The user's `recipient_id` is sent to Mixpanel as the `distinct_id`. Additional properties for `flow` and `state` are also sent with the event. Please note that when an `update_session_to` is called, the user's session is updated immediately and therefore an event is also sent to Mixpanel.

## Tracking Custom Events

If you'd like to track custom events or store user profiles, you can use the following:

```ruby

tracker = Stealth::Mixpanel.new

# Track events

tracker.track(current_session_id, 'event-to-track')

# Store/update user profiles

tracker.people.set(current_session_id, { offer_code: '1234-2', happy: 'yes' })
```

For more information about tracking custom events or user profiles, please check out the [mixpanel-ruby](https://github.com/mixpanel/mixpanel-ruby) gem. The `tracker` instance above is just a `Mixpanel::Tracker` object.
