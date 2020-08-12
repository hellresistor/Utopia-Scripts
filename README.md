# Utopia-Scripts
Some Scripts to Utopia.

Source: https://blog.drhack.net/utopia-release-and-support/


Running Utopia Mining Bot on Linux:
  wget https://update.u.is/downloads/linux/utopia-bot-latest.x86_64.tar.gz
  tar -zxf utopia-bot-latest.x86_64.tar.gz
  cd utopia-bot*
  ./utopia_bot --pk <YOUR PUBLIC KEY>


Running Utopia Mining Bot on Windows : 
  Download: https://update.u.is/downloads/windows/latest/utopia-bot-x64-latest.zip
  Extract the zip file in a folder, let say you extracted your bot to D:/Bot
 Open Command Prompt (Windows > Run > cmd)
 Type > cd D:/Bot/
 Type > utopia_bot.exe --pk <YOUR PUBLIC KEY>


How to auto restart Utopia Mining Bot
  Get from this Repository 'startUtopiaBot.sh'
  Using Screen to Start script: 'screen bash startUtopiaBot.sh'
  Using tmux: Download 'startme.sh'
              Add to Cronjob: '0,30 * * * * /home/usern/startme/startme.sh >> /home/user/startme/log/startme.log'


Run Utopia Bot Through Systemd Service
 Copy 'utopia.service' into '/etc/systemd/system/utopia.service'
