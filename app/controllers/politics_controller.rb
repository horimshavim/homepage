class PoliticsController < ApplicationController
  def index
    @articles = PoliticsArticle.all
  end
end
