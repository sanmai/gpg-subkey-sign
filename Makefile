.EXPORT_ALL_VARIABLES:

SHELL=/bin/bash
GNUPGHOME=.gnupg/
KEY_ID=80F8B43E2F03D644

all:
	chmod 700 .gnupg/
	curl https://github.com/sanmai.gpg | gpg --import
	gpg --list-keys $(KEY_ID)
	git log --show-signature -1
