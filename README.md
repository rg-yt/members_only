# Members Only
In this project, you’ll be building an exclusive clubhouse where your members can write anonymous posts. Inside the clubhouse, members can see who the author of a post is but, outside, they can only see the story and wonder who wrote it.


## Basic setup

    1. Think about and spec out how to set up your data models for this application. You’ll need users with the usual identification attributes like name, email and password. They’ll need to create posts as well.
    2. Create your new members-only Rails app and GitHub repo. Update your README.
    3. Add devise to your Gemfile and install it in your app using set up instructions on the Devise README.

## Authentication and posts

Let’s build those secrets! We’ll need to make sure only signed in users can see the author of each post. We’re not going to worry about editing or deleting posts.

    1. Create a Post model and a Posts controller and a corresponding resource in your Routes file which allows the [:new, :create, :index] methods.
    2. Atop your Posts Controller, use a #before_action to restrict access to the #new and #create methods to only users who are signed in.
    3. For your Posts Controller, prepare your #new action.
    4. Write a form in the app/views/posts/new.html.erb view which will create a new Post.
    5. Make your corresponding #create action build a post where the foreign key for the author (e.g. user_id) is automatically populated based on whichever user is signed in. Redirect to the Index view if successful.
    6. Fill out the #index action of the PostsController and create the corresponding view. The view should show a list of every post.
    7. Now add logic in your Index view to display the author’s name, but only if a user is signed in.
    8. Sign in and create a few secret posts.
    9. Test it out – sign out and go to the index page. You should see a list of the posts but no author names. Sign in and the author names should appear. Your secrets are safe!

