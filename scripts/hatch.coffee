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

moods =
  "happy": "http://123emoji.com/wp-content/uploads/2016/08/6662641022915913320.png",
  "bubble": "http://123emoji.com/wp-content/uploads/2016/08/6662641022929246652.png",
  "yell": "http://123emoji.com/wp-content/uploads/2016/08/6662641022939246651.png",
  "queasy": "http://123emoji.com/wp-content/uploads/2016/08/6662641022949246650.png",
  "crossed": "http://123emoji.com/wp-content/uploads/2016/08/6662641022955913316.png",
  "surprised": "http://123emoji.com/wp-content/uploads/2016/08/6662641022962579982.png",
  "kiss": "http://123emoji.com/wp-content/uploads/2016/08/6662641022969246648.png",
  "wink": "http://123emoji.com/wp-content/uploads/2016/08/6662641022975913314.png",
  "tongue": "http://123emoji.com/wp-content/uploads/2016/08/6662641022995913312.png",
  "bloated": "http://123emoji.com/wp-content/uploads/2016/08/6662641023015913310.png",
  "laugh": "http://123emoji.com/wp-content/uploads/2016/08/6662641023022579976.png",
  "blush": "http://123emoji.com/wp-content/uploads/2016/08/6662641023042579974.png",
  "quiet": "http://123emoji.com/wp-content/uploads/2016/08/6662641023052579973.png",
  "sleepy": "http://123emoji.com/wp-content/uploads/2016/08/6662641023062579972.png",
  "triumph": "http://123emoji.com/wp-content/uploads/2016/08/6662641023072579971.png",
  "slanted": "http://123emoji.com/wp-content/uploads/2016/08/6662641023085913303.png",
  "blank": "http://123emoji.com/wp-content/uploads/2016/08/6662641023092579969.png",
  "yum": "http://123emoji.com/wp-content/uploads/2016/08/6662641023099246635.png",
  "glee": "http://123emoji.com/wp-content/uploads/2016/08/6662641023105913301.png",
  "roll": "http://123emoji.com/wp-content/uploads/2016/08/6662641023115913300.png",
  "eyes": "http://123emoji.com/wp-content/uploads/2016/08/6662641023122579966.png",
  "pretty": "http://123emoji.com/wp-content/uploads/2016/08/6662641023115913300.png",
  "burp": "http://123emoji.com/wp-content/uploads/2016/08/6662641023145913297.png",
  "sick": "http://123emoji.com/wp-content/uploads/2016/08/6662641023152579963.png",
  "startled": "http://123emoji.com/wp-content/uploads/2016/08/6662641023162579962.png",
  "eat": "http://123emoji.com/wp-content/uploads/2016/08/6662641023172579961.png",
  "hungry": "http://123emoji.com/wp-content/uploads/2016/08/6662641023182579960.png",
  "yawn": "http://123emoji.com/wp-content/uploads/2016/08/6662641023189246626.png",
  "smile": "http://123emoji.com/wp-content/uploads/2016/08/6662641023199246625.png",
  "cry": "http://123emoji.com/wp-content/uploads/2016/08/6662641023209246624.png",
  "sniffle": "http://123emoji.com/wp-content/uploads/2016/08/6662641023219246623.png",
  "peeking": "http://123emoji.com/wp-content/uploads/2016/08/6662641023225913289.png",
  "shy": "http://123emoji.com/wp-content/uploads/2016/08/6662641023232579955.png",
  "stare": "http://123emoji.com/wp-content/uploads/2016/08/6662641023242579954.png",
  "sad": "http://123emoji.com/wp-content/uploads/2016/08/6662641023259246619.png",
  "depressed": "http://123emoji.com/wp-content/uploads/2016/08/6662641023265913285.png",
  "thinking": "http://123emoji.com/wp-content/uploads/2016/08/6662641023275913284.png",
  "upwards": "http://123emoji.com/wp-content/uploads/2016/08/6662641023285913283.png",
  "no": "http://123emoji.com/wp-content/uploads/2016/08/6662641023292579949.png"


checkMood = (mood, moods) ->
  return mood of moods

module.exports = (robot) ->
	robot.hear /hatch (.+)/i, (msg) ->
	    mood = if checkMood(msg.match[1].toLowerCase(), moods) then msg.match[1].toLowerCase() else 'Not a supported mood'

	    if mood == 'Not a supported mood'
	    	msg.send "Not a supported mood"
	    else
	    	msg.send "#{moods[mood]}\n"

	robot.respond /mood list/i, (msg) ->
	    moodlist = ''
	    moodlist += "-#{code}\n" for code, mood of moods
	    msg.send moodlist