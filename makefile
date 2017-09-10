README.md: 
	echo "## Coursera Unix Workbench assignment: guessinggame.sh" > README.md
	echo "- **This README file was created:** " >> README.md
	date >> README.md
	echo "- **guessinggame.sh file has following number of rows:** " >> README.md
	wc -l guessinggame.sh |egrep -o "[0-9]+" >> README.md

