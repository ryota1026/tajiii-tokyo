class HomeController < ApplicationController
  require "google_drive"

  def top
    session = GoogleDrive::Session.from_config("config.json")
    sheets = session.spreadsheet_by_key("1rF7M7YgPBscROL1XRM0UDqdGLmDhDdYVDs2-1h4LVew").worksheets[0]
    @spreadsheet = sheets[3,2]

    html = Nokogiri::HTML open 'https://github.com/ryota1026'
    text = html.xpath('//h2[@class = "f4 text-normal mb-2"]').first.inner_text
    text.delete! 'in the last year'
    text.delete! 'cobuo'
    text.gsub(/[\r\n]/,"")
    @count_contribute = text.gsub(/[\r\n]/,"")
    return @count_contribute
  end
end
