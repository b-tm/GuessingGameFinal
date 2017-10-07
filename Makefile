readme:
	@echo "Creating README.md file..."
	@echo "# Guessing Game" > README.md
	@echo "`date`" >> README.md
	@echo "guessinggame.sh has `cat ./guessinggame.sh | wc -l` lines" >> README.md
