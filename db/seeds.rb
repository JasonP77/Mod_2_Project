# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
#   Examples:

Category.destroy_all
Post.destroy_all
User.destroy_all
Comment.destroy_all
#Reply.destroy_all

#user.create
#   User.create     (full_name: , user_name: , email: )
alan = User.create(full_name: "Alan Banks", username: "abanks229", email: "banksgamerz229@gmail.com", password: "posh", admin: true)
vsauce = User.create(full_name: "Michael", username: "VSauce", email: "vsauce@gmail.com", password: "posh", admin: false)
magician = User.create(full_name: "Confused Musician", username: "Bob Doe", email: "help_me_wit_music@gmail.com", password: "posh", admin: false)
wesley = User.create(full_name: "Wesley Chen", username: "JuicyBlocBoi", email: "DaChen@gmail.com", password: "posh", admin: false)
jason = User.create(full_name: "Jason Park", username: "JasonP", email: "jasonp@gmail.com", password: "posh", admin: true)

#   Category.create (name: , description: )
category1 = Category.create(name: "Programming/Coding", description: "A category dedicated to questions regarding coding languages.")
category2 = Category.create(name: "Physics", description: "A category dedicated to questions regarding general physics")
category3 = Category.create(name: "Music", description: "A category dedicated to questions regarding general physics")
category4 = Category.create(name: "Video Games", description: "A category dedicated to questions regarding any Console or PC games")



#   Post.create     (user_id: , category_id: , title: , content: )

post1 = Post.create(user_id: alan.id, category_id: category1.id, title: "Ruby Enumerators/Code Blocks", content: "Hi my name is Alan, I am wondering what exactly happens in a code block such as Ruby's select method?")
post2 = Post.create(user_id: vsauce.id, category_id: category2.id, title: "How Does Inertia Work?", content: "Hey y'all... VSauce here... What exactly is Inertai?")
post3 = Post.create(user_id: magician.id, category_id: category3.id, title: "Trying to apply Secondary Dominants in my piece not working.", content: "To my music theory peeps. The song I am constructing is in D major. What are the best chords I should use in this key?")
post4 = Post.create(user_id: wesley.id, category_id: category4.id, title: "Tetris", content: "Sup I'm Wesley, who tryna play Battle Royale wit me?")


#   Comment.create  (user_id: , post_id: , content: )
comment1 = Comment.create(user_id: wesley.id, post_id: post1.id, parent_id: nil, content: "It's magic my dude")
comment2 = Comment.create(user_id: magician.id, post_id: post2.id, parent_id: nil, content: "Because Physics")
comment3 = Comment.create(user_id: alan.id, post_id: post3.id, parent_id: nil, content: "You essentially have to call the V chord of whatever chord you use in your song. i.e. for your IV chord (A) have a (E) major chord precede it... Since E major is the V chord of A, E is the secondary dominant.")
comment4 = Comment.create(user_id: vsauce.id, post_id: post4.id, parent_id: nil, content: "Let's go, our big Brains will cause havoc")

comment5 = Comment.create(user_id: vsauce.id, post_id: post3.id, parent_id: comment3.id, content: "Idk music but that sounds big brain!")
comment6 = Comment.create(user_id: wesley.id, post_id: post3.id, parent_id: comment5.id, content: "Sup, i know some music too.")

