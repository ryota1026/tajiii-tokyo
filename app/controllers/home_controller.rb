class HomeController < ApplicationController
  require "google_drive"

  def top
    session = GoogleDrive::Session.from_config("config.json")
    sheets = session.spreadsheet_by_key("1rF7M7YgPBscROL1XRM0UDqdGLmDhDdYVDs2-1h4LVew").worksheets[0]
    @spreadsheet = sheets[3,2]
  end
end
