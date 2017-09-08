README.md: 
	echo "## Coursera Unix Workbench assignment: guessinggame.sh" > README.md
	date +%Y-%m-%d:%H:%M:%S >> README.md
	wc -l guessinggame.sh | egrep -o "[0-9]+" >> README.md

