all: readme.md

readme.md: guessinggame.sh
	touch readme.md
	echo "Title:\nBash, Make, Git, and GitHub" > readme.md
	echo "\nLast Date Modified:" >> readme.md
	date "+%Y-%m-%d %H:%M:%S" >> readme.md
	echo "\nNumber of Lines:" >> readme.md
	wc -l guessinggame.sh | egrep -o '[0-9]{1,3}' >> readme.md
