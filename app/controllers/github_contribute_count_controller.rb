require 'nokogiri'
require 'open-uri'

class GithubContributeCountController < ApplicationController
  def show
    @count = count_contribute
  end

  def count_contribute
    html = Nokogiri::HTML open 'https://github.com/ryota1026'
    text = html.xpath('//h2[@class = "f4 text-normal mb-2"]').first.inner_text
    text.delete! 'in the last year'
    text.delete! 'cobuo'
    text.gsub(/[\r\n]/,"")
  end
end
