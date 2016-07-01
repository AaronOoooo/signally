class SignallyController < ApplicationController

  require 'open-uri'

  def index

    @message = "Welcome to Signally, an convenient, informational web app that gives you news tailored to met the needs of your lifestyle."
    @articles = Article.all

    @rss_news = SimpleRSS.parse open('http://feeds.reuters.com/reuters/topNews')
    
    @rss_sports = SimpleRSS.parse open('http://feeds.reuters.com/reuters/sportsNews')

    @rss_news_title = @rss_news.entries

    @headline_one = @rss_news.entries.first.title
    @headline_one_link = @rss_news.items.first.link

    # @news_entries = @rss_news.entries

  end

  def sports
    @message = "Signally provides you with details about the sports actions with information about scores, teams and the individuals who play at their hardest."
  end

  def weather
    @message = "Signally tells you whether to prepare for fun in the sun or whether it's going to be an umbrella and galoshes kind of day by providing you with weather indformation."
  end

  def about
    @message = "Signally is a unique online tool that engages users with relevant news, sports and weather information pertianing to their lifestyle needs. In addition, coupled with a microcontroller and LCD screen, Signally breaks beyond the web by providing users with informtion they need on micro devices."
  end

  def show
    @user = User.find(params["id"])
  end

  def news
    @rss_news = SimpleRSS.parse open('http://feeds.reuters.com/reuters/topNews')
    @rss_news_title = @rss_news.entries.first.title

    
    @rss_sports = SimpleRSS.parse open('http://feeds.reuters.com/reuters/sportsNews')
  end

end
