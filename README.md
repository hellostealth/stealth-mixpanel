# Stealth Mixpanel

This gem provides out-of-the-box tracking of state transitions inside of Stealth via the [Mixpanel](https://mixpanel.com) service. You are free to track additional events as needed, and we may add more baseline events in the future.

## Setup

Once you have your Mixpanel Project Token, set the `MIXPANEL_PROJECT_TOKEN` environment variable. That's the only setup required!

## Events Tracked

Here are the events that are tracked automatically:

* `State Change`: these are sent to Mixpanel each time a state transition takes place. The user's `recipient_id` is sent to Mixpanel as the `distinct_id`. Additional properties for `flow` and `state` are also sent with the event.
