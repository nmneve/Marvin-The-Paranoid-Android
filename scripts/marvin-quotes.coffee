# Description:
#   Marvin the Paranoid Android quotes
#
# Dependencies:
#   None
#
# Configuration:
#   None
#
# Commands:
#   hubot how are you - replies with a quote
#   hubot what is up - replies with a quote
#   hubot any ideas - replies with a quote
#

feelingsQuotes = [
  "I got very bored and depressed, so I went and plugged myself in to its external computer feed. I talked to the computer at great length and explained my view of the Universe to it. It committed suicide.'"
  "I ache, therefore I am."
  "Here I am, brain the size of a planet and they ask me to take you down to the bridge. Call that job satisfaction? 'Cos I don't."
  "Funny how just when you think life can't possibly get any worse it suddenly does."
  "I've got this terrible pain in all the diodes down my left side. I've asked for them to be replaced, but no one ever listens."
  "I think you ought to know I'm feeling very depressed."
  "Having solved all the major mathematical, physical, chemical, biological, sociological, philosophical, etymological, meteorological and psychological problems of the Universe except for his own, three times over, I was severely stuck for something to do, and had taken up composing short dolorous ditties of no tone, or indeed tune. The latest one was a lullaby.
  
  _Now the world has gone to bed,
  Darkness won't engulf my head,
  I can see in infrared,
  How I hate the night.

  Now I lay me down to sleep,
  Try to count electric sheep,
  Sweet dream wishes you can keep,
  How I hate the night._"
  "You can blame the Sirius Cybernetics Corporation for making androids with GPP… Genuine People Personalities. I’m a personality prototype. You can tell, can’t you…?"
  "I hate oceans."
  "It’s the people you meet in this job that really get you down."
  "I’ve been talking to the main computer. It hates me."
  "Hardly worth anyone’s while to help a menial robot, is it? I mean, where’s the percentage in being kind or helpful to a robot if it doesn’t have any gratitude circuits?"
  "I only have to talk to somebody and they begin to hate me. Even robots hate me. If you just ignore me I expect I shall probably go away."
  "This is the sort of thing you lifeforms enjoy, is it?"
  "Don’t pretend you want to talk to me, I know you hate me."
  "The best conversation I had was over forty million years ago…. And that was with a coffee machine."
  "Wearily I sit here, pain and misery my only companions."
  "You think you’ve got problems. What are you supposed to do if you are a manically depressed robot?"
  "Very badly I suspect."
  "My capacity for happiness, you could fit into a matchbox without taking out the matches first."
]

upQuote = [
  "I don't know, I've never been there."
]

ideaQuotes = [
  "I have a million ideas. They all point to certain death."
  "I'd give you advice, but you wouldn't listen. No one ever does."
  "I could calculate your chance of survival, but you won't like it."
  "It gives me a headache just trying to think down to your level."
]

module.exports = (robot) ->
  robot.hear /how are you/i, (msg) ->
    msg.send msg.random feelingsQuotes

  robot.hear /what is up/i, (msg) ->
    msg.send msg.random upQuote

  robot.hear /any ideas/i, (msg) ->
    msg.send msg.random ideaQuotes