#!/bin/bash

PATH=$PATH:/root/.cargo/bin

old_dir=$PWD

REPO_URL=https://github.com/chenxizhan1995/java-note.git

main(){
	trap _clean EXIT

	cd /usr/share/nginx/note/
	if ! [ -e java-note ]; then
		git clone https://github.com/chenxizhan1995/java-note.git
	fi
	cd java-note
	git pull

	mdbook build -d html/note-java
}

_clean(){
	cd "$old_dir"
}
main "$@"
