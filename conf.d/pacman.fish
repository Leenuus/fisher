if not type pacman >/dev/null 2>&1
	exit
end

set -l typos pamcan pacamn pamcna

for typo in $typos
	abbr --position anywhere -a "$typo" pacman
end
