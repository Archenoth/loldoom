#!/usr/bin/env ruby
require 'cinch'
require 'yaml'

CONFIG = YAML.load_file("config.yaml")

def random_monster
  ["Arachnotron", "Archvile", "BaronOfHell", "HellKnight",
   "Cacodemon", "Cyberdemon", "Demon", "Spectre", "ChaingunGuy",
   "DoomImp", "Fatso", "LostSoul", "PainElemental", "Revenant",
   "ShotgunGuy", "SpiderMastermind", "WolfensteinSS", "ZombieMan"].sample
end

def console(command)
  File.open(CONFIG[:file], "a") do |f|
    f.write("#{command}\n")
  end
end

bot = Cinch::Bot.new do
  configure do |c|
    c.ssl.use = true
    c.server = "irc.chat.twitch.tv"
    c.port = 6697
    c.nick = CONFIG[:username]
    c.user = CONFIG[:username]
    c.password = CONFIG[:token]
    c.channels = [CONFIG[:channel]]
  end

  on :message, "!summon" do |m|
    console "summon #{random_monster}"
  end

  on :message, "!greatcommunicator" do |m|
    console "give chainsaw"
  end

  on :message, "!quicksave" do |m|
    console "quicksave"
  end
end

bot.start
