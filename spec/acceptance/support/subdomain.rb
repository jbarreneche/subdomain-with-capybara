module SubdomainMethods
  def switch_to_domain(domain)
    Capybara.app_host = domain
  end
end

RSpec.configuration.include SubdomainMethods, :type => :acceptance
