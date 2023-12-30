2. 
	1. `git log --all --graph --decorate`
	2. `git log -1 -- README.md`
	commit 9ef9db72211fefc00caaa7133b35dda4a99acccf
Author: Anish Athalye <me@anishathalye.com>
Date:   Thu Oct 27 20:28:41 2022 -0400

    Add Docker setup for easier development
	3.`git blame _config.yml`
	 a88b4eac (Anish Athalye 2020-01-17 15:26:30 -0500 18) collections:
	 `git show a88b4eac`
	commit a88b4eac326483e29bdac5ee0a39b180948ae7fc
Author: Anish Athalye <me@anishathalye.com>
Date:   Fri Jan 17 15:26:30 2020 -0500

    Redo lectures as a collection

3. deleted secrets file from this directory
4. Modified test file, ran `git stash` and then `git log --all --online`
$ git log --all --oneline
4f85922 (refs/stash) WIP on main: 1aca56e test
2cc7822 index on main: 1aca56e test
1aca56e (HEAD -> main, origin/main) test
7dcea3b solutions and stuff
ec89f98 assignment 2 solutions
ac517af first assignment solutions

Ran `git stash pop` and then `git log --all --online` and saw this 
$ git log --all --oneline
1aca56e (HEAD -> main, origin/main) test
7dcea3b solutions and stuff
ec89f98 assignment 2 solutions
ac517af first assignment solutions

5. Done, .gitconfig has the following alias
[alias]
	graph = log --all --graph --decorate

6. Added this to global .gitignore file
# Global Git ignore file

.DS_Store

# Ignore Node.js dependences
node_modules/

7. No problems detected
