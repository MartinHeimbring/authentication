module ApplicationHelper

  def full_title(full_title='')
    base_title = "Rails Authentication"
    if full_title.empty?
      base_title
    else
      "#{base_title} | #{full_title}"
    end
  end

  def bootstrap_class_for flash_type

    case flash_type.to_sym
      when :success
        "alert-success"
      when :error
        "alert-error"
      when :alert
        "alert-danger"
      when :notice
        "alert-info"
      else
        flash_type.to_s
    end

  end

end
