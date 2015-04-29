Title: Foodstagram
Team Members: Sebastian Song,  Solah Yoo
Demo Link: https://foodstagram.herokuapp.com/

Idea: An application similar to Instagram but focused on food related posts. Users can post pictures along with a title and caption. Posts can be commented on, and each User has his/her own profile with their own posts.

Models and Description:
    -User
        -has name, email, many posts and many comments
    -Posts
        -has title, caption, many comments
        -belongs to User
    -Comments
        -has message
        -belongs to User and posts
Features:
    -Users can log in
    -Main feed
    -Profile/User specific feed
        -Can view other users’ pictures by clicking on their names or emails
    -Users can post pictures of food
    -Users can comment on pictures

Division of Labor:
    Sebastian
        -Implemented basic feed
        -Implemented basic commenting
        -Styled views
    Solah
        -Added timestamps to all the posts and comments
        -Added Paperclip to Posts
        -Made views
        -Did some styling with Bootstrap
