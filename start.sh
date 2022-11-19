if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/Krazy0007/evamaria.git /evamaria
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /evamaria
fi
cd /evamaria
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 bot.py
