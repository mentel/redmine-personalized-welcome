Redmine::Plugin.register :welcome do
  name 'Personalized Welcome plugin'
  author 'Mentel'
  description "Adds ability to display current user's full name from editable text regions for admins"
  version '0.0.1'
  url 'https://github.com/mentel/redmine-personalized-welcome'
  author_url 'http://www.mentel.com'
end

# adds {{user_fullname}} macro that displays the currently signed in user's full name
Redmine::WikiFormatting::Macros.register do
  desc "full name of current user"
  macro :user_fullname do |obj, args|
    current_user = User.current
    not_logged_in = current_user.anonymous?
    if not_logged_in
      ''
    else
      h("#{current_user.try(:firstname)} #{current_user.try(:lastname)}".strip)
    end
  end
end
