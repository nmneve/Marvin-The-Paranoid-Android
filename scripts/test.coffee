# Description:
#   Display hatch images
#
# Dependencies:
#   None
#
# Configuration:
#   None
#
# Commands:
#
# Author:
#   Justin

# module.exports = (robot) ->
# 	robot.respond /test/i, (msg) ->
# 	  msgData = {
#         channel: msg.envelope.user.name
#         attachments: [
#           {
#             fallback: "Fallback text here.",
#             color: "danger",
#             title: "Title text here"
#             text: "Main body text"
#             mrkdwn_in: ["text"]
#           }
#         ]
#       }
#     robot.adapter.customMessage msgData

# Import the Slack Developer Kit
{WebClient} = require "@slack/client"

module.exports = (robot) ->
  web = new WebClient robot.adapter.options.token

  # robot.hear /test/i, (res) ->
  #   web.api.test().then () -> res.send "Your connection to the Slack API is working!"
  robot.react (res) ->

    # res.message is a ReactionMessage instance that represents the reaction Hubot just heard
    if res.message.type == "added" and res.message.item.type == "message"

      # res.messsage.reaction is the emoji alias for the reaction Hubot just heard
      web.reactions.add
        name: res.message.reaction,
        channel: res.message.item.channel,
        timestamp: res.message.item.ts

  robot.react (res) ->
    
    web.chat.update
      channel: res.message.item.channel,
      text: "Helo World",
      timestamp: res.message.item.ts
