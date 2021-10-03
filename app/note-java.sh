#!/bin/bash

PATH=$PATH:/root/.cargo/bin

old_dir=$PWD

REPO_URL=git@github.com:chenxizhan1995/java-note.git

main(){
	trap _clean EXIT

	cd /usr/share/nginx/note/
	if ! [ -e java-note ]; then
		git clone "$REPO_URL"
	fi
	rm -rf java-note
	git clone "$REPO_URL"
	cd java-note
	mdbook build -d /usr/share/nginx/note/html/note-java
}

_clean(){
	cd "$old_dir"
}
main "$@"
