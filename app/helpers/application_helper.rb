module ApplicationHelper
  def body_class_names
    return "body-bg" if action_name == "home"
  end

  def loc
    request.env['ipinfo'].ip
  end
end
