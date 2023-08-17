class PostService
    def initialize(post, url)
      @post = post
      @url = url
    end
  
    def call
      message = "Hey User!\nA new post has been created!\nTitle: #{@post.title}\nBody: #{@post.body}\nTime: #{Time.now.strftime("%Y-%m-%d %H:%M:%S")}\nYou can view it here: #{@url}"
      Bot.send_message(ChannelID, message)
    end
end