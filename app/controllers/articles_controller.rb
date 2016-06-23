require 'open-uri'

class ArticlesController < ApplicationController

  def index
    @articles = Article.all  
  end

  def rss_generator

    
  end

end
