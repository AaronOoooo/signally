class SignallyController < ApplicationController
  
  def index
    @message = "Welcome to Signally, an convenient, informational web app that gives you news tailored to met the needs of your lifestyle."
  end

  def sports
    @message = "Signally provides you with details about the sports actions with information about scores, teams and the individuals who play at their hardest."
  end

  def weather
    @message = "Signally tells you whether to prepare for fun in the sun or whether it's going to be an umbrella and galoshes kind of day by providing you with weather indformation."
  end

end
