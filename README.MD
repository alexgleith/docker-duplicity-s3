# A simple dockerfile that builds a minimal Duplicity capability.

## Usage examples
You can use duplicity in the normal way, see [official documentation here](http://duplicity.nongnu.org/duplicity.1.html).
### Backup
	docker run \
		-v ~/temp:/tmp/temp \
		-e PASSPHRASE='a duplicity key' \
		-e AWS_SECRET_ACCESS_KEY='EXAMPLESECRETACCESSKEY' \
		-e AWS_ACCESS_KEY_ID='ACCESSKEYEXAMPLE' \
		alexgleith/duplicity \
		duplicity --s3-use-new-style /tmp/temp/temp.txt s3+http://example-s3-repo

### Restore
	docker run \
		-v ~/temp:/tmp/temp \
		-e PASSPHRASE='a duplicity key' \
		-e AWS_SECRET_ACCESS_KEY='EXAMPLESECRETACCESSKEY' \
		-e AWS_ACCESS_KEY_ID='ACCESSKEYEXAMPLE' \
		alexgleith/duplicity \
		duplicity --s3-use-new-style s3+http://example-s3-repo /tmp/temp/restored.txt
