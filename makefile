README.md:
	touch README.md
	echo "Guessing Game\n" > README.md 
	echo "File created on:" >> README.md
	date >> README.md
	echo "" >> README.md
	echo "Number of lines in file:" >> README.md
	cat guessinggame.sh | wc -l >> README.md

