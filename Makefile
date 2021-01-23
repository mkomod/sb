server="user@server.com:/path/to/webpage/directory"

upload: update
	@echo "Uploading files ..."
	@ rsync -a \
	--exclude="posts" --exclude="templates" --exclude="Makefile" \
	-e ssh ${PWD}/* ${server}
	@echo "Upload complete."

update:
	@cat ./templates/index.html `ls -r "./posts/"*.* | head -1` > index.html
	@cat ./templates/blog.html  `ls -r "./posts/"*.*` > blog.html
	@echo "Done updating posts"

preview:
	@${BROWSER} localhost:8000
	@python -m http.server

