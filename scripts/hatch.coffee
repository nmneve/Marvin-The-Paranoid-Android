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
#   hubot hatch <mood> - Displays a hatch image
#
# Author:
#   Justin

robot.respond /hatch (.+)/i, (msg) ->
    mood = res.match[1].trim()

    # hatch = switch mood
    # when happy then "http://123emoji.com/wp-content/uploads/2016/08/6662641022915913320.png"
    # when sad then "http://123emoji.com/wp-content/uploads/2016/08/6662641023122579966.png"
    # else "Not a supported mood"

    msg.send hatch