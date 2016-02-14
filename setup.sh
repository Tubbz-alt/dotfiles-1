#!/bin/bash -e

DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

for target in \
	bin \
	"Library/Application Support/Sublime Text 3/Packages/ManageIQ Log" \
	"Library/Application Support/Sublime Text 3/Packages/User/Preferences.sublime-settings" \
	"Library/Application Support/Sublime Text 3/Packages/User/Twilight (Fryguy).tmTheme" \
	.gemrc \
	.gitconfig \
	.gitignore_global \
	.irbrc \
	.profile \
	.pryrc
do
  echo "Linking $target"
  ln -sfh "$DIR/$target" ~/"$target"
done
