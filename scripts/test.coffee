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