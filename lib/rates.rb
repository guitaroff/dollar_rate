module Rates
  require 'net/http'
  require 'json'

  def self.get_rate
    url = 'https://www.cbr-xml-daily.ru/daily_json.js'
    uri = URI(url)
    response = Net::HTTP.get(uri)
    JSON.parse(response)
  end

  def self.current_dollar
    rate = get_rate
    dollar = rate.present? ? rate['Valute']['USD']['Value'] : nil
    dollar.round(2) if dollar
  end
end
