Weekend Blog Project

1) I started out by making a new rails project in my dev folder
[rails new -d postgresql rails_blog]

2) Once my app was started, I made sure all necessary gems were installed.
[gem bcrypt, then bundle install]

3) Next I wanted to set up my db
[db:create]

4) The next step for me was to set up all of my routes in my 'routes.db'
[each controller will have it's own set of routes, I all of mine at once.]

5) Now I needed to migrate routes.
[rake db:migrate]

6) After I migrated I created my other two controllers
[rails -g controller sessions create new show] &&
[rails -g controller comments (all routes)]

7) This set me up pretty well with a 'skeleton' to hold all of my auth.

8) Auth was my next step once I was able to get everything to connect.

9) I made sure that users could only edit/delete IF they were logged in and only if the comment's were THEIRS.

10) Once everything came together I incorporated bootstrap.

11) Initially bootstrap destroyed everything, but after a little bit of time hardcoding styling, I got it working again. 