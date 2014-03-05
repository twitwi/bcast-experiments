RELEASE_PARENT = /tmp
RELEASE_CHILD = bcast
RELEASE_DIR = $(RELEASE_PARENT)/$(RELEASE_CHILD)
RELEASE_FILE = bcast.tgz

release :
	rm -rf $(RELEASE_DIR)
	mkdir -p $(RELEASE_DIR)
	cp test-02/*.* $(RELEASE_DIR)
	sed -i -e 's!\.\./!\./!g' $(RELEASE_DIR)/index.html
	cp -r css $(RELEASE_DIR)
	cp -r js $(RELEASE_DIR)
	cp -r lib $(RELEASE_DIR)
	cp -r plugin $(RELEASE_DIR)
	cd $(RELEASE_PARENT) && tar zcvf $(RELEASE_FILE) $(RELEASE_CHILD)
