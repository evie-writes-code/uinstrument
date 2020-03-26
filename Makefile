#edit these lines to be accurate to the state of your local install of Pd
local-path-extra = /Applications/Pd-0.48-1.app/Contents/Resources/extra

#location of dependencies
uutil-url = https://github.com/evie-writes-code/uutil.git
uoscil-url = https://github.com/evie-writes-code/uoscil.git

all: dependencies

dependencies: $(local-path-extra)/uutil $(local-path-extra)/uoscil

#clones necessary libraries and updates them if necessary
$(local-path-extra)/uutil: 
	git clone $(uutil-url) $(local-path-extra)/uutil
	cd $(local-path-extra)/uutil
	git remote add upstream $(uutil-url)
	git pull upstream master

$(local-path-extra)/uoscil:
	git clone $(uoscil-url) $(local-path-extra)/uoscil
	cd $(local-path-extra)/uoscil
	git remote add upstream $(uoscil-url)
	git pull upstream master