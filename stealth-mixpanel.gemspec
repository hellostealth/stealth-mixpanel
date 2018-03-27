Gem::Specification.new do |s|
  s.name        = 'stealth-mixpanel'
  s.version     = '0.9.0'
  s.date        = '2018-03-26'
  s.summary     = "Stealth Mixpanel"
  s.description = "Built-in state tracking for Stealth bots with Mixpanel."
  s.authors     = ["Mauricio Gomes"]
  s.email       = 'mauricio@whoisblackops.com'
  s.files       = `git ls-files`.split("\n")
  s.homepage    = 'http://github.com/hellostealth/stealth-mixpanel'
  s.license     = 'MIT'

  s.add_dependency 'stealth', '~> 0.10'
  s.add_dependency 'mixpanel-ruby', '~> 2.2'

  s.add_development_dependency "rspec", "3.6.0"

end
