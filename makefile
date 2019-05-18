all: gen_readme

gen_readme:
	@echo "Guessing Game" > README.md
	@echo "$(shell date)" >> README.md

	@wc -l guessinggame.sh | egrep -o "[0-9]+" >> README.md
