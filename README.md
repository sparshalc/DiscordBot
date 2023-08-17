# DiscordBot/Rails


## Description

Discord bot, powered by Rails and discordrb gem! This bot effectively sends messages on Discord, featuring post titles, bodies, and links, promptly notifying about new posts.

## Installation

1. Clone the repo
2. Run `bundle install && rails db:migrate`
3. Replace your ChannelID in: `\discord-bot\config\initializers`

```ruby
    require 'discordrb'

    ChannelID = `Your Channel ID Here`

    Bot = Discordrb::Commands::CommandBot.new(
    token: Rails.application.credentials.dig(:discord, :token),
    client_id: Rails.application.credentials.dig(:discord, :client_id),
    prefix: '!'
    )
    Dir["#{Rails.root}/app/commands/*.rb"].each { |file| require file }
    Bot.run(true)

    puts "Invite URL: #{Bot.invite_url}"
```

## Gem Used
[Discordrb](https://github.com/shardlab/discordrb)


![UI](https://github.com/sparshalc/discord-bot/blob/main/ui.png)