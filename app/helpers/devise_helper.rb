module DeviseHelper
  def devise_error_messages!
    return "" if resource.errors.empty?

    messages = resource.errors.full_messages.map { |msg| content_tag(:p, msg, :id => 'error_text') }.join

    html = <<-HTML
    <div id="error_explanation">
      <div>#{messages}</div>
    </div>
    HTML
    html.html_safe
  end
  
  def devise_error_messages?
    resource.errors.empty? ? false : true
  end

end