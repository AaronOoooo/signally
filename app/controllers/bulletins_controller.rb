class BulletinsController < ApplicationController

  layout 'sports'
  require 'open-uri'

  def news_landing

    @message = "Welcome to Signally, an convenient, informational web app that gives you news tailored to met the needs of your lifestyle."
    @articles = Article.all

    @rss_news = SimpleRSS.parse open('http://feeds.reuters.com/reuters/topNews')
    
    @rss_sports = SimpleRSS.parse open('http://feeds.reuters.com/reuters/sportsNews')

    @rss_news_title = @rss_news.entries

    @headline_one = @rss_news.entries.first.title
    @headline_one_link = @rss_news.items.first.link

    # @news_entries = @rss_news.entries

  end

  def sports_landing
    
    @message = "Welcome to Signally, an convenient, informational web app that gives you news tailored to met the needs of your lifestyle."
    @articles = Article.all

    @rss_news = SimpleRSS.parse open('http://feeds.reuters.com/reuters/topNews')
    
    @rss_sports = SimpleRSS.parse open('http://feeds.reuters.com/reuters/sportsNews')

    @rss_news_title = @rss_news.entries

    @headline_one = @rss_news.entries.first.title
    @headline_one_link = @rss_news.items.first.link

    # @news_entries = @rss_news.entries
    
  end


end
