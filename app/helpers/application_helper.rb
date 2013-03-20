module ApplicationHelper
  def login_nav
    if @auth.present?
      "<li>#{link_to(@auth.name, '/login', :method => :delete, :remote => true, :class => 'button tiny alert username')}</li>"
    end
  end
end