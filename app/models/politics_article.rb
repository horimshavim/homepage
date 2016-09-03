require 'cgi'

class PoliticsArticle
  include ActiveModel::Model

  attr_accessor :date, :title, :channel, :embed, :source

  def self.all
    ret = []
    ret << PoliticsArticle.new(date: Date.new(2016,6,6), title: 'מאבקם של הורים גרושים להורות שוויונית', channel: 'ערוץ הכנסת', embed: 'SnHhJvLCgZA', source: :youtube)
    #ret << PoliticsArticle.new(date: Date.new(2016,6,24), title: 'יומן - סיפורו של אב גרוש הנאבק להורות שווה', channel: 'רשות השידור', embed: 'sUTbEQ4yidY', source: :youtube)
    ret << PoliticsArticle.new(date: Date.new(2016,6,6), title: 'ביקור ח״כ אמיר אוחנה מהליכוד', channel: 'הורים שווים', embed: 'https://www.facebook.com/parental.equality.israel/videos/1019886531392274/', source: :facebook)

    ret
  end

  def embed_code
    case source
      when :youtube
        return "<div class='embed-container'><iframe src='https://www.youtube.com/embed/#{embed}' frameborder='0' allowfullscreen></iframe></div>"
      when :facebook
        return "<div class='fb-video'
               data-href='#{embed}'
               data-allowfullscreen='true'
               data-show-text='true'
               data-show-captions='true'
               data-autoplay='false'></div>"

        #return "<div class='embed-container'><iframe src='https://www.facebook.com/plugins/video.php?href=#{CGI::escape(embed)}&show_text=1' style='border:none;overflow:hidden' scrolling='no' height='764' frameborder='0' allowTransparency='false' allowFullScreen='true'></iframe></div>"
        #return '<div class=""><iframe src="https://www.facebook.com/plugins/video.php?href=https%3A%2F%2Fwww.facebook.com%2Fparental.equality.israel%2Fvideos%2F1019886531392274%2F&show_text=1&width=560" width="560" height="764" style="border:none;overflow:hidden" scrolling="no" frameborder="0" allowTransparency="false"></iframe></div>'
      else
        puts "EVERYTHING"
    end
  end

end