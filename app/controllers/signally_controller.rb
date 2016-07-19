class SignallyController < ApplicationController

  require 'open-uri'

  def index

    @message = "Welcome to Signally, an convenient, informational web app that gives you news tailored to met the needs of your lifestyle."
    @articles = Article.all

    @rss_news = SimpleRSS.parse(open('http://feeds.reuters.com/reuters/topNews'))
    @news_scroll = build_scroll(@rss_news)
    
    @rss_sports = SimpleRSS.parse(open('http://feeds.reuters.com/reuters/sportsNews'))
    @sports_scroll = build_scroll(@rss_sports)

    @rss_news_title = @rss_news.entries

    @rss_business = SimpleRSS.parse open('http://feeds.reuters.com/reuters/businessNews')
    @business_scroll = build_scroll(@rss_business)

    @rss_entertainment = SimpleRSS.parse(open('http://feeds.reuters.com/reuters/entertainment'))
    @entertainment_scroll = build_scroll(@rss_entertainment)

    @headline_one = @rss_news.entries.first.title
    @headline_one_link = @rss_news.items.first.link

    particle_scrolls = @news_scroll[0..33]

    # response = Unirest.post('https://api.particle.io/v1/devices/Birdie/led?access_token=e4b051c2d2ecfcdc018575e2a78ab3d06e8eadf6',
    #           headers:{ "Accept" => "application/json" }, 
    #           parameters:{ :scroll => particle_scrolls } 
    #           )

    @scroll_array = build_scroll_array([@rss_news, @rss_sports, @rss_business, @rss_entertainment])
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

  def particle
    Unirest.post("https://api.particle.io/v1/devices/390027001847353236343033/led?access_token=e4b051c2d2ecfcdc018575e2a78ab3d06e8eadf6")
    
  end

  def show
    @user = User.find(params["id"])
  end

  def news
    @rss_news = SimpleRSS.parse open('http://feeds.reuters.com/reuters/topNews')
    @rss_news_title = @rss_news.entries.first.title

    @rss_sports = SimpleRSS.parse open('http://feeds.reuters.com/reuters/sportsNews')

    @rss_business = SimpleRSS.parse open('http://feeds.reuters.com/reuters/businessNews')

    @rss_entertainment = SimpleRSS.parse open('http://feeds.reuters.com/reuters/entertainment')

  end

private

  def build_scroll(feed)
    scroll_string = ''
    6.times do |index|
      scroll_string += feed.entries[index].title + " * * * * "
    end
    scroll_string
  end

  def build_scroll_array(feed_array)
    scroll_array = []

    feed_array.each do |feed|
      6.times do |index|
        scroll_array << feed.entries[index].title[0..79] + " "
      end
    end

    scroll_array.shuffle.join(";")
  end


end
