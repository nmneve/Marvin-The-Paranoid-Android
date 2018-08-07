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


	robot.respond /test/i, (msg) ->
	  robot.on 'slack.attachment',
      message: msg.message
      content:
        # see https://api.slack.com/docs/attachments
        text: "Attachment text"
        fallback: "Attachment fallback"
        fields: [{
          title: "Field title"
          value: "Field value"
        }]
      username: "foobot" # optional, defaults to robot.name
      icon_url: "..." # optional
      icon_emoji: "..." # optional