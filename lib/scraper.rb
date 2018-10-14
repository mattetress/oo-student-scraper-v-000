require 'open-uri'
require 'pry'
require 'nokogiri'

class Scraper

  def self.scrape_index_page(index_url)
    doc = Nokogiri::HTML(open(index_url))
    students = []
    doc.css("div.student-card").each do |student|
      students << { name: student.css("h4").text, location: student.css("p").text, profile_url: student.css("a").attribute("href").value }
    end
    students
  end

  def self.scrape_profile_page(profile_url)
    doc = Nokogiri::HTML(open(profile_url))
    profile_info = {}

    doc.css("div.vitals-container div.social-icon-container a").each do |site|
      binding.pry
    end

  end

end


# student div.student-card
# profile url:  student.css("a").attribute("href").value
# name:  student.css("h4").text
# location: student.css("p").text
#
#
#
