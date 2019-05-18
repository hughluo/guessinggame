all: gen_readme

gen_readme:
	@echo "Guessing Game\n" > README.md
	@echo "$(shell date)\n" >> README.md

	@wc -l guessinggame.sh | egrep -o "[0-9]+" >> README.md
