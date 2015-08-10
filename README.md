<style>
body{
	background-color:#262626; 
	color:#2EBD59;
}
</style>


<h2>Weekend Blog Project<h2>

<strong>1)</strong> I started out by making a new rails project in my dev folder
[rails new -d postgresql rails_blog]

<strong>2)</strong> Once my app was started, I made sure all necessary gems were installed.
[gem bcrypt, then bundle install]

<strong>3)</strong> Next I wanted to set up my db
[db:create]

<strong>4)</strong> The next step for me was to set up all of my routes in my 'routes.db'
[each controller will have it's own set of routes, I all of mine at once.]

<strong>5)</strong> Now I needed to migrate routes.
[rake db:migrate]

<strong>6)</strong> After I migrated I created my other two controllers
[rails -g controller sessions create new show] &&
[rails -g controller comments (all routes)]

<strong>7)</strong> This set me up pretty well with a 'skeleton' to hold all of my auth.

<strong>8)</strong> Auth was my next step once I was able to get everything to connect.

<strong>9)</strong> I made sure that users could only edit/delete IF they were logged in and only if the comment's were THEIRS.

<strong>10)</strong> Once everything came together I incorporated bootstrap.

<strong>11)</strong> Initially bootstrap destroyed everything, but after a little bit of time hardcoding styling, I got it working again. 