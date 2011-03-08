# Makefile
# Some common tasks for whole project.
# Vladimir Rutsky <altsysrq@gmail.com>
# 20.05.2009

all:
	@echo "Read Makefile contents for details of usage."

git-init:
	git remote add github    git@github.com:rutsky/debian-live.git
	git remote add gitorious git@gitorious.org:bob/debian-live.git

public:
	git push git@github.com:rutsky/debian-live.git master
	git push git@gitorious.org:bob/debian-live.git master
