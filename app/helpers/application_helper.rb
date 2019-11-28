module ApplicationHelper
  def body_class_names
    return "body-bg" if action_name == "home"
    return "conf-bg" if controller_name == "orders" && action_name == "show"
  end

  def loc
    request.env['ipinfo'].ip
  end
end
