require 'open-uri'
require 'pry'
require 'nokogiri'

class Scraper

  def self.scrape_index_page(index_url)
    doc = Nokogiri::HTML(open(index_url))
    student_info = []
    students = []
    doc.css("div.student-card").each do |student|

      binding.pry
    end
  end

  def self.scrape_profile_page(profile_url)

  end

end


# student div.student-card
# profile url:  student.css("a").attribute("href").value
# name:  student.css("h4").text
# location: student.css("p").text
#
#
#
