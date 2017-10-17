require 'random_data'


# post id: 51
Post.find_or_create_by!(title: "New Title", body: "New Post")
# post id: 52
Post.find_or_create_by!(title: "Another new post title", body: "Another new body.")
Post.find_or_create_by!(title: "Title three is Here", body: "Third post body content!")
Post.find_or_create_by!(title: "Last one", body: "This is the last post added by find or create.")

# comment id: 101 with post id:51
Comment.find_or_create_by!(post: Post.find_or_create_by!(title: "New Title for a New Post", body: "New Body for a New Post"), body: "This is a comment")

# comment id:102 with brand new post
Comment.find_or_create_by!(post: Post.find_or_create_by!(title: "Post from a comment", body: "This post didn't exist before this comment was created"), body: "A self created comment")

# Create Posts
50.times do
  Post.create!(
    title:  RandomData.random_sentence,
    body:   RandomData.random_paragraph
  )
end
posts = Post.all

# Create Comments
100.times do
  Comment.create!(
    post: posts.sample,
    body: RandomData.random_paragraph
  )
end

puts "Seed finished"
puts "#{Post.count} posts created"
puts "#{Comment.count} comments created"
