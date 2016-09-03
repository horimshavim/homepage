class PoliticsArticle
  include ActiveModel::Model

  attr_accessor :date, :title, :embed, :source

  def self.all
    ret = []
    ret << PoliticsArticle.new(date: Date.new(2016,6,6), title: 'מאבקם של הורים גרושים להורות שוויונית', embed: 'SnHhJvLCgZA', source: :youtube)

    ret
  end

  def href
    case source
      when :youtube
        return "<iframe src='https://www.youtube.com/embed/#{embed}' frameborder='0' allowfullscreen></iframe>"
      else
        puts "EVERYTHING"
    end
  end

end