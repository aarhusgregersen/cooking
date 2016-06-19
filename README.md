
What is it?
======
This page is a user driven cooking directory site with a blog frontpage.



Technical specifications (mostly used as guidelines for myself when building the app):
===

- Users can only edit recipes they created (ID validation on relationship)
- Authentizing with token (logging in/out + unique users)
	- Use devise gem
- Users can only destroy their own items
- Admins can edit and destroy anything. Admins will still have to be added at database level (I suppose?!).
	- Admins have to be a separate devise scaffold => Users + Admins (two different groups)
- Landing page displays the most recent blog_post from any user
- Landing page above recent blog, displays a slider with meals. Make these static for now.
- (Create namespace for each page 'setup'. Admin pages vs ordinary pages (is namespaces even in correct use??))


Features:
- Blog posts
  - Posts belong to a user (and are deleted when user is removed)
  - Users can add, edit and delete blog posts
  - Users must be logged in to do any of the above
- Users
  - Users must be able to sign up, login/logout
  - Authentizice users
  - Users can add, edit and delete THEIR OWN ACCOUNT
  - Emails should be unique
- Admins
	- Admins can edit and delete anything on the site, blog posts as well as recipes
	- Admins are authenticed similarly to users
	- Before action checks for admin group and allows X Y Z
	- Users can NOT be part of both users & admins
- Recipes
  - Recipes should belong to a user (and are deleted whehn user is removed)
  - Recipes should contain an optional picture as well as multiple textfields consisting of:
    - Short description as well as how many people it is for
    - Ingredients
    - Instructions, ideally suggested as listed bulletpoints
  - The recipe page should contain simple math that can divide how many ingredients you need for x number of people
  -
