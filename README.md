Personalized Welcome plugin
===========================

Installation
------------

Clone latest version of plugin from git, install it to plugins. From redmine
APP ROOT:

1. If inside a git project already:

        $ git submodule add git@github.com:mentel/redmine-personalized-welcome.git plugins/personalized_welcome

        $ git commit -m "add plugin 'personalized_welcome' as submodule"

   Otherwise:

        $ git clone git@github.com:mentel/redmine-personalized-welcome.git plugins/personalized_welcome

2. Restart your Redmine web server

3. As an admin, go to Administration -> Settings, and edit the 'Welcome text'
   field to something like:

          Welcome {{user_fullname}}

  This macro (`{{user_fullname}}`) can be used anywhere in the app now.

4. Done!

