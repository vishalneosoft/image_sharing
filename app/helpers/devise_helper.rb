module DeviseHelper
  def devise_error_messages!
    return "" unless devise_error_messages?

    resource.errors.full_messages.each do |message|
      concat(content_tag(:div, message, class: "alert alert-danger alert-dismissable", style: "margin: 10px;") do
        concat content_tag(:button, 'x', class: "close", style: "font-size: 18px;", data: { dismiss: 'alert' })
        concat content_tag(:p, message)
      end)
    end
    nil
  end

  def devise_error_messages?
    !resource.errors.empty?
  end

end