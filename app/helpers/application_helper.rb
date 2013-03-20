module ApplicationHelper
  def login_nav
    if @auth.present?
      "<li>#{link_to(@auth.name, '/login', :method => :delete, :remote => true, :class => 'button')}</li>"
    end
  end
end