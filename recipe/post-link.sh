#!/usr/bin/env bash

set -e -o pipefail

PACKAGE_HOME=$PREFIX/share/$PKG_NAME-$PKG_VERSION-$PKG_BUILDNUM

if [ -f "${PACKAGE_HOME}/.standalone-dist-installed" ]; then
    cat > "${PREFIX}"/.messages.txt <<- EOF

	##############################################################################
	#                                                                            #
	# Standalone distribution of git-annex was installed, instead of the         #
	# standard distribution, likely due to package conflicts in the target       #
	# environment.  The standalone distribution may have issues (e.g. be slower, #
	# or not pass the expected environment to some external programs);           #
	# the standard distribution should be used when possible.                    #
	# You can force installation of the standard version by adding =alldep* to   #
	# the build string, e.g.                                                     #
	# conda install git-annex=*=alldep*                                          #
	#                                                                            #
	# For more info on the standalone git-annex distribution see                 #
	# https://git-annex.branchable.com/install/Linux_standalone/                 #
	#                                                                            #
	##############################################################################
EOF

fi