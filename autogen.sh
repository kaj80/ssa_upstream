#! /bin/sh

libmlx4/autogen.sh
libmlx5/autogen.sh
libibumad/autogen.sh
libibverbs/autogen.sh
librdmacm/autogen.sh
opensm/autogen.sh
ompi/autogen.sh
ibssa2/autogen.sh
#ibssa2/distrib/autogen.sh
#ibssa2/tests/autogen.sh
#ibssa2/acm/autogen.sh
#ibssa2/plugin/autogen.sh


set -x
test -d ./config || mkdir ./config
aclocal -I config
libtoolize --force --copy
autoheader
automake --foreign --add-missing --copy
autoconf
