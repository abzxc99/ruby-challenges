class Blog

  attr_accessor :blog_posts
# Create a hash where all blog posts will be stored
  def initialize
    @blog_posts = Hash.new{ |hsh, key| hsh[key] = [] }
  end

# Create a new blog post
  def new_blog_post
    current_time = Time.now
    puts "Enter Blog post title:  "
    blog_title=gets.chomp
   
    puts "Create a blog post: "
    blog_content = gets.chomp

    puts "Enter the name of the author: "
    blog_author = gets.chomp
    user_blogpost=Blog_post.new(current_time.to_s, blog_title, blog_content, blog_author)
  end

# Store new blog post in the hash blog_posts
  def store_blog_post(time, title, content, author)
    value = []
    value[0] = title
    value[1] = content 
    value[2] = author
    blog_posts.store(time, value) 
  end 

# Publish tile, time created, content of all blog entries stored in hash blog_posts 
  def publish(blog_posts)                   
    blog_posts.each do |key, value| 
      puts ("\n Blog post title: #{value[0]} \n  Created at:  #{key} \n  #{value[1]}  \n  Author: #{value[2]}")
      
    end
  end 
end

class Blog_post

  attr_accessor :title, :content, :current_time, :author

  def initialize(time, title, content, author) 
    @current_time = time
    @title = title
    @content = content
    @author = author 
  end
end

this_blog =  Blog.new 
iterate = true
while (iterate) 
  puts "Would you like to create a new blog post? Y/N "
  if (gets.chomp.downcase == 'y')
    user_blog_post = this_blog.new_blog_post
    this_blog.store_blog_post(user_blog_post.current_time, user_blog_post.title, user_blog_post.content, user_blog_post.author)
  else
    iterate =  false
  end
end

if (this_blog.blog_posts.empty?)
  puts "\nCurrently there are no posts.\n"
  puts this_blog.inspect
else
  puts("\nBlog \n\n")
  puts this_blog.blog_posts.inspect
  this_blog.publish(this_blog.blog_posts) 

  puts "\nAscending order: "
  this_blog.publish(this_blog.blog_posts.sort.to_h)

  puts "\nDescending order: "
  this_blog.publish(this_blog.blog_posts.sort.reverse.to_h)
end 

