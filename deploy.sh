#!/bin/zsh
# Home Grown publiceren: ./deploy.sh "wat je veranderde"
cd "$(dirname "$0")"
msg="${1:-update}"
git add -A
if git diff --cached --quiet; then
  echo "Geen wijzigingen."
else
  git -c user.email="macmoproo-jpg@users.noreply.github.com" -c user.name="macmoproo-jpg" commit -qm "$msg"
  git push -q origin main
  echo "Gepubliceerd: https://macmoproo-jpg.github.io/hg-7m4q2x9k/"
fi
