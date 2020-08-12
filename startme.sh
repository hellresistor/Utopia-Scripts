#! /bin/bash
timenow=$(TZ='Europe/London' date)
if [ "$(pidof utopia_bot)" ]
then
 echo "$timenow * bot is running"
else
 echo " "
 echo "$timenow * bot is offline"
 session="ubot"
 tmux has-session -t $session 2>/dev/null
 if [ $? != 0 ]; then
 echo "$timenow * starting new session..."
 tmux new -d -s $session
 else
 echo "$timenow * attaching to current session..."
 fi
 echo "$timenow * restarting bot..."
 tmux send -t $session 'cd /home/user/utopia-bot-1.0.5499.el7.x86_64/' ENTER
 tmux send -t $session './utopia_bot --pk <YOUR PUBLIC KEY>' ENTER
 echo " "
fi
