require 'cgi'

class PoliticsArticle
  include ActiveModel::Model

  attr_accessor :date, :title, :channel, :embed, :source

  def self.all
    ret = []
#    ret << PoliticsArticle.new(date: Date.new(2016,6,6), title: 'מאבקם של הורים גרושים להורות שוויונית', channel: 'ערוץ הכנסת', embed: 'SnHhJvLCgZA', source: :youtube)
#    ret << PoliticsArticle.new(date: Date.new(2016,6,6), title: 'אמהות בעד ביטול חזקת הגיל הרך ושוויון הורי', channel: 'הקול השפוי', embed: 'https://www.facebook.com/parental.equality.israel/videos/1027297663984494/', source: :facebook)

    ret << PoliticsArticle.new(date: Date.new(2016,6,1), title: 'ביקור חבר הכנסת בצלאל סמוטריץ - מפלגת הבית היהודי', channel: 'הורים שווים', embed: 'BVnjbKARqug', source: :youtube)
    ret << PoliticsArticle.new(date: Date.new(2016,6,5), title: 'ביקור חבר הכנסת יהודה גליק - מפלגת הליכוד', channel: 'הורים שווים', embed: 'VgFakdU2xbg', source: :youtube)
    ret << PoliticsArticle.new(date: Date.new(2016,6,6), title: 'ביקור חבר הכנסת אמיר אוחנה - מפלגת הליכוד', channel: 'הורים שווים', embed: 'LDwmz_y3SnI', source: :youtube)
    ret << PoliticsArticle.new(date: Date.new(2016,6,13), title: 'ביקור שרת המשפטים איילת שקד - מפלגת הליכוד', channel: 'הורים שווים', embed: 'eHeFPB-Lzyw', source: :youtube)
    ret << PoliticsArticle.new(date: Date.new(2016,6,14), title: 'מפגש של שרת המשפטים איילת שקד עם יושבי המאהל', channel: 'הורים שווים', embed: 'dFyVgCmR620', source: :youtube)
    ret << PoliticsArticle.new(date: Date.new(2016,6,14), title: 'ביקור חבר הכנסת יואב קיש - מפלגת הליכוד', channel: 'הורים שווים', embed: 'gT7HpZSUjsc', source: :youtube)
    ret << PoliticsArticle.new(date: Date.new(2016,6,17), title: 'ביקור ד״ר עודד סושרד - חבר מפלגת הבית היהודי', channel: 'הורים שווים', embed: 'bOqxgACz6qc', source: :youtube)
    ret << PoliticsArticle.new(date: Date.new(2016,6,17), title: 'ראיון של רונית סמדר דרור - יו״ר עמותת לצידכם', channel: 'הורים שווים', embed: 'ZgudrCLORyY', source: :youtube)
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