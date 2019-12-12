class RatesController < ApplicationController
  def index
    @current_dollar = Rates::current_dollar
  end
end
