if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/Rishi09090909/Thorbotz.git /Thorbotz
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /Auto-Filter-V5
fi
cd /autofilterbot
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 bot.py
