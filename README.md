# Doom meets Twitch

It's Doom, except with the cooperative and non-adversarial nature of Twitch chat :D

## Setting up
Install [AutoHotKey](https://www.autohotkey.com/) and [Ruby](https://www.ruby-lang.org/en/).

There's probably™ nothing bad about using a deprecated and outdated IRC library that hasn't been updated in years, nope.

If you agree, you can make the same not-mistake as me by running this:
```sh
gem install cinch
```

After that, you can add the ini in [this gzdoom ini file to your existing config](./support/gzdoom.ini). The script that gets `exec`d is located in the folder you run the game from, so keep that in mind!

[This AutoHotKey Script](./support/loldoom.ahk) doesn't know where the above script is, so you need to update it to be the file you get f13 to run above.

You'll also need to make a config.yaml file, which should look like [config.yaml.example](./config.yaml.example) except with more secretsssss (and the `file` referencing the same thing as in loldoom.ahk)

## Using
If everything is set up right, you can run `loldoom.rb` and it should connect to your Twitch channel chat.

Then you can run the AutoHotKey script, which should add a little icon to your system tray to tell you it's running.

And finally, after starting gzDoom, you can hit Ctrl + F12 to start running commands from chat. (Which will accumulate from the time you connect the bot to your server)

To stop the polling, just unfocus the gzdoom window. You'll need to Ctrl + F12 to resume running the certainly-helpful input you missed since the unfocus. (And it will all happen at once, so good luck!)
