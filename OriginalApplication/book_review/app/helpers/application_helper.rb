module ApplicationHelper
  def copyright
    text = 'Copyright (c) 2018'
    if Date.today.year > 2018
      text << '-' + Date.today.year.to_s
    end
    text << ' project_j , All Rights Reserved.'
    text
  end
end
