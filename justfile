@update-contributors:
	echo 'Removing old appendix-00-contributors.md'
	mv src/appendix-00-contributors.md appendix-00-contributors.md.bak
	echo 'Downloading a list of new contributors'
	echo "The following is a list of contributors in alphabetical order:" > src/appendix-00-contributors.md
	echo "" >> src/appendix-00-contributors.md
	echo "" >> src/appendix-00-contributors.md
	githubcontrib --owner kbknapp --repo clap-book --sha master --cols 6 --format md --showlogin true --sortBy login >> src/appendix-00-contributors.md
	rm appendix-00-contributors.md.bak
	
build:
	mdbook build

clean:
	find . -type f -name "*.orig" -exec rm {} \;
	find . -type f -name "*.bk" -exec rm {} \;
	find . -type f -name ".*~" -exec rm {} \;

@help: list

@list:
	echo 'Available commands:'
	echo
	echo -e '\tupdate-contributors'
	echo -e '\t\trequires: githubcontrib (https://github.com/mgechev/github-contributors-list)
	echo -e '\tbuild'
	echo -e '\tclean'
	echo -e '\tlist | help'