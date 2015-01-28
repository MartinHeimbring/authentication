module ApplicationHelper

  def full_title(full_title='')
    base_title = "Rails Authentication"
    if full_title.empty?
      base_title
    else
      "#{base_title} | #{full_title}"
    end
  end
end
